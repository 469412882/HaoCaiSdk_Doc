.class public Lcom/liulishuo/filedownloader/util/FileDownloadUtils;
.super Ljava/lang/Object;
.source "FileDownloadUtils.java"


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static DEFAULT_SAVE_ROOT_PATH:Ljava/lang/String; = null

.field private static final FILEDOWNLOADER_PREFIX:Ljava/lang/String; = "FileDownloader"

.field private static FILENAME_CONVERTED:Ljava/lang/Boolean; = null

.field private static final INTERNAL_DOCUMENT_NAME:Ljava/lang/String; = "filedownloader"

.field private static IS_DOWNLOADER_PROCESS:Ljava/lang/Boolean; = null

.field private static MIN_PROGRESS_STEP:I = 0x0

.field private static MIN_PROGRESS_TIME:J = 0x0L

.field private static final OLD_FILE_CONVERTED_FILE_NAME:Ljava/lang/String; = ".old_file_converted"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const/high16 v0, 0x10000

    sput v0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->MIN_PROGRESS_STEP:I

    .line 55
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->MIN_PROGRESS_TIME:J

    .line 362
    const/4 v0, 0x0

    sput-object v0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->FILENAME_CONVERTED:Ljava/lang/Boolean;

    .line 387
    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    .line 388
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 387
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Ljava/lang/String;)Z
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .line 486
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 487
    .local v0, "perm":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static convertContentLengthString(Ljava/lang/String;)J
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 491
    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 493
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 494
    :catch_0
    move-exception v2

    .line 495
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method

.method public static convertHeaderString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "nameAndValuesString"    # Ljava/lang/String;

    .line 314
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "lineString":[Ljava/lang/String;
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 317
    .local v1, "namesAndValues":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 317
    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 318
    aget-object v4, v0, v3

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "nameAndValue":[Ljava/lang/String;
    mul-int/lit8 v5, v3, 0x2

    aget-object v6, v4, v2

    aput-object v6, v1, v5

    .line 325
    mul-int/lit8 v5, v3, 0x2

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-object v6, v4, v6

    aput-object v6, v1, v5

    .line 317
    .end local v4    # "nameAndValue":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method public static createOutputStream(Ljava/lang/String;)Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "found invalid internal destination path, empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    invoke-static {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isFilenameValid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 563
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "found invalid internal destination filename %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    .line 564
    invoke-static {v3, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 571
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "found invalid internal destination path[%s], & path is directory[%B]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    .line 573
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    .line 572
    invoke-static {v4, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 575
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 576
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_3

    .line 577
    new-instance v3, Ljava/io/IOException;

    const-string v4, "create new file error  %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 579
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 578
    invoke-static {v4, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 583
    :cond_3
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->createOutputStream(Ljava/io/File;)Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;

    move-result-object v1

    return-object v1
.end method

.method public static deleteTargetFile(Ljava/lang/String;)V
    .locals 2
    .param p0, "targetFilePath"    # Ljava/lang/String;

    .line 698
    if-eqz p0, :cond_0

    .line 699
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 700
    .local v0, "targetFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 705
    .end local v0    # "targetFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static deleteTaskFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "targetFilepath"    # Ljava/lang/String;
    .param p1, "tempFilePath"    # Ljava/lang/String;

    .line 683
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->deleteTempFile(Ljava/lang/String;)V

    .line 684
    invoke-static {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->deleteTargetFile(Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method public static deleteTempFile(Ljava/lang/String;)V
    .locals 2
    .param p0, "tempFilePath"    # Ljava/lang/String;

    .line 688
    if-eqz p0, :cond_0

    .line 689
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 695
    .end local v0    # "tempFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static findContentLength(ILcom/liulishuo/filedownloader/connection/FileDownloadConnection;)J
    .locals 9
    .param p0, "id"    # I
    .param p1, "connection"    # Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    .line 514
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->convertContentLengthString(Ljava/lang/String;)J

    move-result-wide v0

    .line 515
    .local v0, "contentLength":J
    const-string v2, "Transfer-Encoding"

    invoke-interface {p1, v2}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "transferEncoding":Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_3

    .line 518
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const-string v5, "chunked"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 519
    .local v5, "isEncodingChunked":Z
    :goto_0
    if-nez v5, :cond_2

    .line 521
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v6

    iget-boolean v6, v6, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->HTTP_LENIENT:Z

    if-eqz v6, :cond_1

    .line 524
    const-wide/16 v0, -0x1

    .line 525
    sget-boolean v6, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v6, :cond_3

    .line 526
    const-class v6, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;

    const-string v7, "%d response header is not legal but HTTP lenient is true, so handle as the case of transfer encoding chunk"

    new-array v4, v4, [Ljava/lang/Object;

    .line 528
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    .line 526
    invoke-static {v6, v7, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 531
    :cond_1
    new-instance v3, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v4, "can\'t know the size of the download file, and its Transfer-Encoding is not Chunked either.\nyou can ignore such exception by add http.lenient=true to the filedownloader.properties"

    invoke-direct {v3, v4}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 537
    :cond_2
    const-wide/16 v0, -0x1

    .line 541
    .end local v5    # "isEncodingChunked":Z
    :cond_3
    :goto_1
    return-wide v0
.end method

.method public static findEtag(ILcom/liulishuo/filedownloader/connection/FileDownloadConnection;)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # I
    .param p1, "connection"    # Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    .line 500
    if-nez p1, :cond_0

    .line 501
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "connection is null when findEtag"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_0
    const-string v0, "Etag"

    invoke-interface {p1, v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "newEtag":Ljava/lang/String;
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_1

    .line 507
    const-class v1, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;

    const-string v2, "etag find %s for task(%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    :cond_1
    return-object v0
.end method

.method public static findFilename(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "connection"    # Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .param p1, "url"    # Ljava/lang/String;

    .line 545
    const-string v0, "Content-Disposition"

    .line 546
    invoke-interface {p0, v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "filename":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    :cond_0
    return-object v0
.end method

.method public static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 345
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 153
    invoke-static {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "directory"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t generate real path, the file name is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    if-nez p0, :cond_1

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t generate real path, the directory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    const-string v0, "%s%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 196
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getIdGeneratorInstance()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;->generateId(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static generateId(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pathAsDirectory"    # Z

    .line 208
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getIdGeneratorInstance()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;->generateId(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static getConvertedMarkedFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 383
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "filedownloader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".old_file_converted"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultSaveFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getDefaultSaveRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSaveRootPath()Ljava/lang/String;
    .locals 1

    .line 136
    sget-object v0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->DEFAULT_SAVE_ROOT_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->DEFAULT_SAVE_ROOT_PATH:Ljava/lang/String;

    return-object v0

    .line 140
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 141
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFreeSpaceBytes(Ljava/lang/String;)J
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 333
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "statFs":Landroid/os/StatFs;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 335
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    .line 335
    .local v1, "freeSpaceBytes":J
    goto :goto_0

    .line 338
    .end local v1    # "freeSpaceBytes":J
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long v1, v1, v3

    .line 341
    .restart local v1    # "freeSpaceBytes":J
    :goto_0
    return-wide v1
.end method

.method public static getMinProgressStep()I
    .locals 1

    .line 112
    sget v0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->MIN_PROGRESS_STEP:I

    return v0
.end method

.method public static getMinProgressTime()J
    .locals 2

    .line 116
    sget-wide v0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->MIN_PROGRESS_TIME:J

    return-wide v0
.end method

.method public static getParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .line 447
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 447
    .local v0, "length":I
    const/4 v1, 0x0

    .line 448
    .local v1, "firstInPath":I
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    .line 449
    const/4 v1, 0x2

    .line 451
    :cond_0
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 452
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-lez v1, :cond_1

    .line 453
    const/4 v2, 0x2

    .line 455
    :cond_1
    if-eq v2, v3, :cond_4

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 458
    :cond_2
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_3

    .line 459
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v3, v5, :cond_3

    .line 460
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 462
    :cond_3
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 456
    :cond_4
    :goto_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getStack()Ljava/lang/String;
    .locals 1

    .line 231
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getStack(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStack(Z)Ljava/lang/String;
    .locals 2
    .param p0, "printLine"    # Z

    .line 235
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 236
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    invoke-static {v0, p0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getStack([Ljava/lang/StackTraceElement;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStack([Ljava/lang/StackTraceElement;Z)Ljava/lang/String;
    .locals 4
    .param p0, "stackTrace"    # [Ljava/lang/StackTraceElement;
    .param p1, "printLine"    # Z

    .line 240
    if-eqz p0, :cond_4

    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v0, "t":Ljava/lang/StringBuilder;
    const/4 v1, 0x3

    .line 246
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 247
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.liulishuo.filedownloader"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
    goto :goto_1

    .line 250
    :cond_1
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.liulishuo.filedownloader"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    if-eqz p1, :cond_2

    .line 255
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 257
    :cond_2
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 241
    .end local v0    # "t":Ljava/lang/StringBuilder;
    :cond_4
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method public static getTargetFilePath(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "pathAsDirectory"    # Z
    .param p2, "filename"    # Ljava/lang/String;

    .line 426
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 427
    return-object v0

    .line 430
    :cond_0
    if-eqz p1, :cond_2

    .line 431
    if-nez p2, :cond_1

    .line 432
    return-object v0

    .line 435
    :cond_1
    invoke-static {p0, p2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 437
    :cond_2
    return-object p0
.end method

.method public static getTempPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "targetPath"    # Ljava/lang/String;

    .line 187
    const-string v0, "%s.temp"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadPoolName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileDownloader-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBreakpointAvailable(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z
    .locals 1
    .param p0, "id"    # I
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 587
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isBreakpointAvailable(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static isBreakpointAvailable(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Ljava/lang/Boolean;)Z
    .locals 5
    .param p0, "id"    # I
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .param p2, "outputStreamSupportSeek"    # Ljava/lang/Boolean;

    .line 595
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 596
    sget-boolean v2, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v2, :cond_0

    .line 597
    const-class v2, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;

    const-string v3, "can\'t continue %d model == null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    :cond_0
    return v1

    .line 602
    :cond_1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 603
    sget-boolean v2, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v2, :cond_2

    .line 604
    const-class v2, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;

    const-string v3, "can\'t continue %d temp path == null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    :cond_2
    return v1

    .line 609
    :cond_3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isBreakpointAvailable(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static isBreakpointAvailable(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 19
    .param p0, "id"    # I
    .param p1, "model"    # Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "outputStreamSupportSeek"    # Ljava/lang/Boolean;

    move-object/from16 v0, p2

    .line 615
    const/4 v1, 0x0

    .line 618
    .local v1, "result":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 619
    sget-boolean v4, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v4, :cond_7

    .line 620
    const-class v4, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;

    const-string v5, "can\'t continue %d path = null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v4, v5, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 625
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    .line 627
    .local v5, "isExists":Z
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    .line 629
    .local v6, "isDirectory":Z
    if-eqz v5, :cond_6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    .line 637
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 638
    .local v9, "fileLength":J
    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v11

    .line 640
    .local v11, "currentOffset":J
    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getConnectionCount()I

    move-result v13

    if-gt v13, v3, :cond_2

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-nez v15, :cond_2

    .line 642
    sget-boolean v7, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v7, :cond_7

    .line 643
    const-class v7, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;

    const-string v8, "can\'t continue %d the downloaded-record is zero."

    new-array v3, v3, [Ljava/lang/Object;

    .line 644
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v2

    .line 643
    invoke-static {v7, v8, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 649
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v13

    .line 650
    .local v13, "totalLength":J
    cmp-long v15, v9, v11

    if-ltz v15, :cond_5

    const-wide/16 v15, -0x1

    cmp-long v17, v13, v15

    if-eqz v17, :cond_3

    cmp-long v15, v9, v13

    if-gtz v15, :cond_5

    cmp-long v15, v11, v13

    if-ltz v15, :cond_3

    goto :goto_0

    .line 664
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    cmp-long v7, v13, v9

    if-nez v7, :cond_4

    .line 666
    sget-boolean v7, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v7, :cond_7

    .line 667
    const-class v7, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;

    const-string v8, "can\'t continue %d, because of the output stream doesn\'t support seek, but the task has already pre-allocated, so we only can download it from the very beginning."

    new-array v3, v3, [Ljava/lang/Object;

    .line 670
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v2

    .line 667
    invoke-static {v7, v8, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 675
    :cond_4
    const/4 v1, 0x1

    .line 675
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "isExists":Z
    .end local v6    # "isDirectory":Z
    .end local v9    # "fileLength":J
    .end local v11    # "currentOffset":J
    .end local v13    # "totalLength":J
    goto :goto_2

    .line 656
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "isExists":Z
    .restart local v6    # "isDirectory":Z
    .restart local v9    # "fileLength":J
    .restart local v11    # "currentOffset":J
    .restart local v13    # "totalLength":J
    :cond_5
    :goto_0
    sget-boolean v16, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v16, :cond_7

    .line 657
    const-class v7, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;

    const-string v8, "can\'t continue %d dirty data fileLength[%d] sofar[%d] total[%d]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 659
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v16, 0x1

    aput-object v2, v3, v16

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v16, 0x2

    aput-object v2, v3, v16

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v16, 0x3

    aput-object v2, v3, v16

    .line 657
    invoke-static {v7, v8, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 630
    .end local v9    # "fileLength":J
    .end local v11    # "currentOffset":J
    .end local v13    # "totalLength":J
    :cond_6
    :goto_1
    sget-boolean v3, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v3, :cond_7

    .line 631
    const-class v3, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;

    const-string v7, "can\'t continue %d file not suit, exists[%B], directory[%B]"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 632
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v9, 0x2

    aput-object v2, v8, v9

    .line 631
    invoke-static {v3, v7, v8}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "isExists":Z
    .end local v6    # "isDirectory":Z
    :cond_7
    :goto_2
    return v1
.end method

.method public static isDownloaderProcess(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 271
    sget-object v0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->IS_DOWNLOADER_PROCESS:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->IS_DOWNLOADER_PROCESS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 275
    :cond_0
    const/4 v0, 0x0

    .line 277
    .local v0, "result":Z
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v1

    iget-boolean v1, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->PROCESS_NON_SEPARATE:Z

    if-eqz v1, :cond_1

    .line 278
    const/4 v0, 0x1

    .line 279
    goto :goto_1

    .line 282
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 283
    .local v1, "pid":I
    const-string v2, "activity"

    .line 284
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 286
    .local v2, "activityManager":Landroid/app/ActivityManager;
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 287
    const-class v4, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;

    const-string v5, "fail to get the activity manager!"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    return v3

    .line 291
    :cond_2
    nop

    .line 292
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 294
    .local v4, "runningAppProcessInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 300
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 301
    .local v5, "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v1, :cond_4

    .line 302
    iget-object v3, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v6, ":filedownloader"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 303
    goto :goto_1

    .line 305
    .end local v5    # "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    goto :goto_0

    .line 309
    .end local v1    # "pid":I
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "runningAppProcessInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_5
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->IS_DOWNLOADER_PROCESS:Ljava/lang/Boolean;

    .line 310
    sget-object v1, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->IS_DOWNLOADER_PROCESS:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 295
    .restart local v1    # "pid":I
    .restart local v2    # "activityManager":Landroid/app/ActivityManager;
    .restart local v4    # "runningAppProcessInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_6
    :goto_2
    const-class v5, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;

    const-string v6, "The running app process info list from ActivityManager is null or empty, maybe current App is not running."

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    return v3
.end method

.method public static isFilenameConverted(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 375
    sget-object v0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->FILENAME_CONVERTED:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 376
    invoke-static {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getConvertedMarkedFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->FILENAME_CONVERTED:Ljava/lang/Boolean;

    .line 379
    :cond_0
    sget-object v0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->FILENAME_CONVERTED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isFilenameValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public static isNeedSync(JJ)Z
    .locals 3
    .param p0, "bytesDelta"    # J
    .param p2, "timestampDelta"    # J

    .line 708
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getMinProgressStep()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    .line 709
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getMinProgressTime()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 708
    :goto_0
    return v0
.end method

.method public static isNetworkNotOnWifiType()Z
    .locals 5

    .line 472
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 473
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 475
    .local v0, "manager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 476
    const-class v3, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;

    const-string v4, "failed to get connectivity manager!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    return v2

    .line 480
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 482
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static markConverted(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 353
    invoke-static {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getConvertedMarkedFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 355
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 356
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    goto :goto_0

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 360
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;

    .line 214
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .local v0, "hash":[B
    nop

    .line 218
    nop

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    .local v1, "hex":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v0, v3

    .line 223
    .local v4, "b":B
    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    and-int/lit16 v5, v4, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 217
    .end local v0    # "hash":[B
    .end local v1    # "hex":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Huh, UTF-8 should be supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 215
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 216
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Huh, MD5 should be supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "contentDisposition"    # Ljava/lang/String;

    .line 401
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 402
    return-object v0

    .line 406
    :cond_0
    :try_start_0
    sget-object v1, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 407
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 412
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :cond_1
    goto :goto_0

    .line 410
    :catch_0
    move-exception v1

    .line 413
    :goto_0
    return-object v0
.end method

.method public static setDefaultSaveRootPath(Ljava/lang/String;)V
    .locals 0
    .param p0, "path"    # Ljava/lang/String;

    .line 178
    sput-object p0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->DEFAULT_SAVE_ROOT_PATH:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public static setMinProgressStep(I)V
    .locals 2
    .param p0, "minProgressStep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isDownloaderProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sput p0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->MIN_PROGRESS_STEP:I

    .line 82
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "This value is used in the :filedownloader process, so set this value in your process is without effect. You can add \'process.non-separate=true\' in \'filedownloader.properties\' to share the main process to FileDownloadService. Or you can configure this value in \'filedownloader.properties\' by \'download.min-progress-step\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setMinProgressTime(J)V
    .locals 2
    .param p0, "minProgressTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isDownloaderProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sput-wide p0, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->MIN_PROGRESS_TIME:J

    .line 109
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "This value is used in the :filedownloader process, so set this value in your process is without effect. You can add \'process.non-separate=true\' in \'filedownloader.properties\' to share the main process to FileDownloadService. Or you can configure this value in \'filedownloader.properties\' by \'download.min-progress-time\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
