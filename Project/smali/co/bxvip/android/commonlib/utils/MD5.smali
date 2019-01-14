.class public Lco/bxvip/android/commonlib/utils/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "updateFile"    # Ljava/io/File;

    .line 86
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4

    .line 89
    .local v1, "digest":Ljava/security/MessageDigest;
    nop

    .line 88
    nop

    .line 93
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v0, v2

    .line 96
    .local v0, "is":Ljava/io/InputStream;
    nop

    .line 95
    nop

    .line 98
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 101
    .local v2, "buffer":[B
    :goto_0
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .line 101
    .local v4, "read":I
    const/4 v5, 0x0

    if-lez v3, :cond_0

    .line 102
    invoke-virtual {v1, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 105
    .local v3, "md5sum":[B
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 106
    .local v6, "bigInt":Ljava/math/BigInteger;
    const/16 v8, 0x10

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "output":Ljava/lang/String;
    const-string v9, "%32s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v5

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x20

    const/16 v9, 0x30

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .end local v8    # "output":Ljava/lang/String;
    .local v5, "output":Ljava/lang/String;
    nop

    .line 114
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 116
    goto :goto_1

    .line 115
    :catch_0
    move-exception v7

    .line 109
    :goto_1
    return-object v5

    .line 113
    .end local v3    # "md5sum":[B
    .end local v4    # "read":I
    .end local v5    # "output":Ljava/lang/String;
    .end local v6    # "bigInt":Ljava/math/BigInteger;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 110
    :catch_1
    move-exception v3

    .line 111
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to process file for MD5"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    nop

    .line 114
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 116
    goto :goto_3

    .line 115
    :catch_2
    move-exception v4

    .line 117
    :goto_3
    throw v3

    .line 94
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "buffer":[B
    :catch_3
    move-exception v2

    .line 95
    .local v2, "e":Ljava/io/FileNotFoundException;
    return-object v0

    .line 87
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 88
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v0
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    return-object v1

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    .local v0, "digest":Ljava/security/MessageDigest;
    const/4 v2, 0x0

    .line 60
    .local v2, "in":Ljava/io/FileInputStream;
    const/16 v3, 0x400

    new-array v4, v3, [B

    .line 63
    .local v4, "buffer":[B
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    move-object v0, v5

    .line 64
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 65
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    move v7, v6

    .line 65
    .local v7, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 66
    invoke-virtual {v0, v4, v5, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    nop

    .line 71
    nop

    .line 73
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v6, 0x1

    invoke-direct {v1, v6, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 74
    .local v1, "bigInt":Ljava/math/BigInteger;
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "strMd5":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0x20

    if-ge v6, v8, :cond_2

    .line 76
    nop

    .line 76
    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x20

    if-ge v5, v6, :cond_2

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 80
    .end local v5    # "i":I
    :cond_2
    return-object v3

    .line 69
    .end local v1    # "bigInt":Ljava/math/BigInteger;
    .end local v3    # "strMd5":Ljava/lang/String;
    .end local v7    # "len":I
    :catch_0
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    return-object v1
.end method

.method private static getHashString(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 6
    .param p0, "digest"    # Ljava/security/MessageDigest;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    .line 41
    .local v4, "b":B
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    and-int/lit8 v5, v4, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .line 28
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 29
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 30
    invoke-static {v0}, Lco/bxvip/android/commonlib/utils/MD5;->getHashString(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 32
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 35
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v0, 0x0

    return-object v0
.end method
