.class public Lcom/qihoo360/replugin/ext/parser/ApkParser;
.super Lcom/qihoo360/replugin/ext/parser/AbstractApkParser;
.source "ApkParser.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final zf:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/AbstractApkParser;-><init>()V

    .line 50
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/qihoo360/replugin/ext/parser/ApkParser;->zf:Ljava/util/zip/ZipFile;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/ext/parser/ApkParser;-><init>(Ljava/io/File;)V

    .line 55
    return-void
.end method

.method private static toByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/16 v0, 0x2000

    :try_start_0
    new-array v0, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 79
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v2

    .line 81
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .line 81
    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 82
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    if-eqz v1, :cond_1

    .line 87
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    :cond_1
    if-eqz p0, :cond_2

    .line 92
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object v2

    .line 86
    .end local v3    # "len":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 87
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    .end local v0    # "buf":[B
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v0

    if-eqz p0, :cond_4

    .line 92
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-super {p0}, Lcom/qihoo360/replugin/ext/parser/AbstractApkParser;->close()V

    .line 71
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/ApkParser;->zf:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 72
    return-void
.end method

.method public getFileData(Ljava/lang/String;)[B
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/ApkParser;->zf:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 60
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    .line 61
    const/4 v1, 0x0

    return-object v1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/ApkParser;->zf:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 65
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/qihoo360/replugin/ext/parser/ApkParser;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    return-object v2
.end method
