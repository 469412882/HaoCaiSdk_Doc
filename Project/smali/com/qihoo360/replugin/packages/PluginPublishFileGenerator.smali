.class Lcom/qihoo360/replugin/packages/PluginPublishFileGenerator;
.super Ljava/lang/Object;
.source "PluginPublishFileGenerator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static write(Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 7
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "low"    # I
    .param p3, "high"    # I
    .param p4, "ver"    # I

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "os":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 56
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 58
    .local v2, "dis":Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/qihoo360/replugin/utils/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v4

    move-object v1, v4

    .line 59
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/qihoo360/replugin/utils/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v0, v4

    .line 60
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 62
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 63
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 64
    invoke-virtual {v2, p4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 66
    invoke-static {p0}, Lcom/qihoo360/replugin/utils/basic/SecurityUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "md5":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 68
    nop

    .line 81
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .end local v1    # "is":Ljava/io/FileInputStream;
    .end local v2    # "dis":Ljava/io/DataOutputStream;
    .end local v4    # "md5":Ljava/lang/String;
    .end local p0    # "srcPath":Ljava/lang/String;
    .end local p1    # "outPath":Ljava/lang/String;
    .end local p2    # "low":I
    .end local p3    # "high":I
    .end local p4    # "ver":I
    :goto_0
    invoke-static {v2}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    invoke-static {v1}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v3

    .line 70
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "dis":Ljava/io/DataOutputStream;
    .restart local v4    # "md5":Ljava/lang/String;
    .restart local p0    # "srcPath":Ljava/lang/String;
    .restart local p1    # "outPath":Ljava/lang/String;
    .restart local p2    # "low":I
    .restart local p3    # "high":I
    .restart local p4    # "ver":I
    :cond_0
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 76
    invoke-static {v1, v2}, Lcom/qihoo360/replugin/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    const/4 v3, 0x1

    goto :goto_0

    .line 81
    .end local v4    # "md5":Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 78
    :catch_0
    move-exception v4

    .line 79
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v4    # "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    invoke-static {v1}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    nop

    .line 85
    return v3

    .line 81
    :goto_1
    invoke-static {v2}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    invoke-static {v0}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    invoke-static {v1}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method
