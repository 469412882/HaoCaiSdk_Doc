.class public Lcom/qihoo360/replugin/utils/CloseableUtils;
.super Ljava/lang/Object;
.source "CloseableUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .line 70
    if-eqz p0, :cond_0

    .line 71
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    nop

    .line 76
    :goto_1
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .line 40
    if-eqz p0, :cond_0

    .line 41
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    nop

    .line 46
    :goto_1
    return-void
.end method

.method public static closeQuietly(Ljava/util/zip/ZipFile;)V
    .locals 1
    .param p0, "c"    # Ljava/util/zip/ZipFile;

    .line 86
    if-eqz p0, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    nop

    .line 92
    :goto_1
    return-void
.end method

.method public static varargs closeQuietly([Ljava/io/Closeable;)V
    .locals 3
    .param p0, "closeables"    # [Ljava/io/Closeable;

    .line 54
    if-nez p0, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 58
    .local v2, "closeable":Ljava/io/Closeable;
    invoke-static {v2}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 57
    .end local v2    # "closeable":Ljava/io/Closeable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method
