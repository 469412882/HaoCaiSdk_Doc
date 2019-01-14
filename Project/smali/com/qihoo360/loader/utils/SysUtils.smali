.class public final Lcom/qihoo360/loader/utils/SysUtils;
.super Ljava/lang/Object;
.source "SysUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Plugin.SysUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentProcessName()Ljava/lang/String;
    .locals 9

    .line 39
    const/4 v0, 0x0

    move-object v1, v0

    .line 41
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_0
    const-string v2, "/proc/self/cmdline"

    .line 42
    .local v2, "fn":Ljava/lang/String;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 43
    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 44
    .local v3, "buffer":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 46
    .local v5, "len":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v6

    move v7, v6

    .line 46
    .local v7, "b":I
    if-lez v6, :cond_0

    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 47
    add-int/lit8 v6, v5, 0x1

    .line 47
    .local v6, "len":I
    int-to-byte v8, v7

    aput-byte v8, v3, v5

    .line 44
    .end local v5    # "len":I
    move v5, v6

    goto :goto_0

    .line 49
    .end local v6    # "len":I
    .restart local v5    # "len":I
    :cond_0
    if-lez v5, :cond_1

    .line 50
    new-instance v6, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v6, v3, v4, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 51
    .local v0, "s":Ljava/lang/String;
    nop

    .line 58
    invoke-static {v1}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    .line 58
    .end local v0    # "s":Ljava/lang/String;
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "buffer":[B
    .end local v5    # "len":I
    .end local v7    # "b":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 53
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "Plugin.SysUtils"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-static {v1}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    nop

    .line 60
    return-object v0

    .line 58
    :goto_1
    invoke-static {v1}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
