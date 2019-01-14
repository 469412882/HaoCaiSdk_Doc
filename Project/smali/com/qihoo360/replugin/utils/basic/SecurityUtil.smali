.class public Lcom/qihoo360/replugin/utils/basic/SecurityUtil;
.super Ljava/lang/Object;
.source "SecurityUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/io/File;)[B
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 136
    const/4 v0, 0x0

    move-object v1, v0

    .line 138
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/qihoo360/replugin/utils/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 139
    invoke-static {v1}, Lcom/qihoo360/replugin/utils/basic/SecurityUtil;->MD5(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-static {v1}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 140
    :catch_0
    move-exception v2

    .line 143
    invoke-static {v1}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 144
    nop

    .line 146
    return-object v0
.end method

.method public static final MD5(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 151
    .local v0, "digest":Ljava/security/MessageDigest;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 152
    .local v1, "buffer":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 153
    .local v3, "rc":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v3, v4

    if-ltz v4, :cond_1

    .line 154
    if-lez v3, :cond_0

    .line 155
    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2
.end method

.method public static MD5(Ljava/lang/String;)[B
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/basic/SecurityUtil;->MD5(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static MD5([B)[B
    .locals 3
    .param p0, "input"    # [B

    .line 37
    const/4 v0, 0x0

    move-object v1, v0

    .line 39
    .local v1, "md":Ljava/security/MessageDigest;
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 43
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 45
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    return-object v0
.end method

.method public static getFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 64
    invoke-static {p0}, Lcom/qihoo360/replugin/utils/basic/SecurityUtil;->MD5(Ljava/lang/String;)[B

    move-result-object v0

    .line 65
    .local v0, "digest":[B
    if-nez v0, :cond_0

    .line 66
    const/4 v1, 0x0

    return-object v1

    .line 68
    :cond_0
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/basic/ByteConvertor;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMD5(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "digest":[B
    const/4 v1, 0x0

    move-object v2, v1

    .line 103
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 104
    .local v3, "md":Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 106
    const/4 v4, 0x0

    .line 107
    .local v4, "theByte":I
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 108
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    move v4, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 109
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 115
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "theByte":I
    .end local v5    # "buffer":[B
    if-eqz v2, :cond_2

    .line 117
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :goto_1
    goto :goto_3

    .line 118
    :catch_0
    move-exception v3

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_1

    .line 117
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 120
    goto :goto_2

    .line 118
    :catch_1
    move-exception v3

    .line 120
    :cond_1
    :goto_2
    throw v1

    .line 112
    :catch_2
    move-exception v3

    .line 115
    if-eqz v2, :cond_2

    .line 117
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 123
    :cond_2
    :goto_3
    if-nez v0, :cond_3

    .line 124
    return-object v1

    .line 126
    :cond_3
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/basic/ByteConvertor;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 56
    if-nez p0, :cond_0

    .line 57
    const-string v0, ""

    return-object v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/basic/SecurityUtil;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B

    .line 52
    invoke-static {p0}, Lcom/qihoo360/replugin/utils/basic/SecurityUtil;->MD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/basic/ByteConvertor;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMd5ByFile(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    move-object v2, v1

    .line 76
    .local v2, "digest":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 77
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    .line 78
    .local v3, "byteBuffer":Ljava/nio/MappedByteBuffer;
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 79
    .local v4, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 80
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v5

    .line 84
    .end local v3    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v4    # "md5":Ljava/security/MessageDigest;
    if-eqz v0, :cond_0

    .line 86
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    :goto_0
    goto :goto_1

    .line 87
    :catch_0
    move-exception v3

    .line 88
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 81
    :catch_1
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 86
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 92
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 93
    return-object v1

    .line 95
    :cond_1
    invoke-static {v2}, Lcom/qihoo360/replugin/utils/basic/ByteConvertor;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 84
    :goto_2
    if-eqz v0, :cond_2

    .line 86
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 89
    goto :goto_3

    .line 87
    :catch_2
    move-exception v3

    .line 88
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v1
.end method
