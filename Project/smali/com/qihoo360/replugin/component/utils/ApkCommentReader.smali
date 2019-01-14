.class public Lcom/qihoo360/replugin/component/utils/ApkCommentReader;
.super Ljava/lang/Object;
.source "ApkCommentReader.java"


# static fields
.field private static final MAGIC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qihoo360/replugin/component/utils/ApkCommentReader;->MAGIC:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        0x4dt
        0x53t
        0x2dt
        0x50t
        0x4ct
        0x47t
        0x29t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decompress([B)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # [B

    .line 109
    if-nez p0, :cond_0

    .line 110
    const-string v0, ""

    return-object v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 115
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v1

    .line 116
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 117
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    .local v2, "gzip":Ljava/util/zip/GZIPInputStream;
    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 120
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    move v5, v4

    .line 120
    .local v5, "n":I
    if-ltz v4, :cond_1

    .line 121
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 123
    :cond_1
    const-string v4, "utf-8"

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-eqz v0, :cond_2

    .line 129
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    goto :goto_1

    .line 130
    :catch_0
    move-exception v6

    .line 131
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-object v4

    .line 127
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "gzip":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "buffer":[B
    .end local v5    # "n":I
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 124
    :catch_1
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_3

    .line 129
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 132
    :goto_2
    goto :goto_3

    .line 130
    :catch_2
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 131
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 135
    :cond_3
    :goto_3
    const-string v1, ""

    return-object v1

    .line 127
    :goto_4
    if-eqz v0, :cond_4

    .line 129
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 132
    goto :goto_5

    .line 130
    :catch_3
    move-exception v2

    .line 131
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    throw v1
.end method

.method private static getComment(Ljava/io/RandomAccessFile;)[B
    .locals 11
    .param p0, "raf"    # Ljava/io/RandomAccessFile;

    .line 70
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 71
    return-object v0

    .line 76
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    .line 77
    .local v1, "index":J
    sget-object v3, Lcom/qihoo360/replugin/component/utils/ApkCommentReader;->MAGIC:[B

    array-length v3, v3

    int-to-long v3, v3

    sub-long v5, v1, v3

    .line 78
    .end local v1    # "index":J
    .local v5, "index":J
    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 79
    sget-object v1, Lcom/qihoo360/replugin/component/utils/ApkCommentReader;->MAGIC:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 80
    .local v1, "magicBuffer":[B
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 81
    sget-object v2, Lcom/qihoo360/replugin/component/utils/ApkCommentReader;->MAGIC:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    return-object v0

    .line 86
    :cond_1
    const-wide/16 v2, 0x2

    sub-long v7, v5, v2

    .line 87
    .end local v5    # "index":J
    .local v7, "index":J
    invoke-virtual {p0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 88
    const/4 v2, 0x2

    new-array v2, v2, [B

    .line 89
    .local v2, "contentLen":[B
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 91
    const/4 v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    const/4 v4, 0x0

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 92
    .local v3, "length":I
    if-lez v3, :cond_2

    .line 93
    int-to-long v4, v3

    sub-long v9, v7, v4

    .line 94
    .end local v7    # "index":J
    .local v9, "index":J
    invoke-virtual {p0, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 95
    new-array v4, v3, [B

    .line 96
    .local v4, "bytes":[B
    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-object v4

    .line 101
    .end local v1    # "magicBuffer":[B
    .end local v2    # "contentLen":[B
    .end local v3    # "length":I
    .end local v4    # "bytes":[B
    .end local v9    # "index":J
    :cond_2
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static readComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 51
    invoke-static {v0}, Lcom/qihoo360/replugin/component/utils/ApkCommentReader;->getComment(Ljava/io/RandomAccessFile;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/qihoo360/replugin/component/utils/ApkCommentReader;->decompress([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v0, :cond_0

    .line 57
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v1

    .line 55
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 52
    :catch_1
    move-exception v1

    .line 53
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 57
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 60
    :goto_1
    goto :goto_2

    .line 58
    :catch_2
    move-exception v1

    .line 59
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 59
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 63
    :cond_1
    :goto_2
    const-string v1, ""

    return-object v1

    .line 55
    :goto_3
    if-eqz v0, :cond_2

    .line 57
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 60
    goto :goto_4

    .line 58
    :catch_3
    move-exception v2

    .line 59
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v1
.end method
