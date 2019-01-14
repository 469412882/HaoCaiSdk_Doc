.class public final Lcom/qihoo360/loader/utils/ProcessLocker;
.super Ljava/lang/Object;
.source "ProcessLocker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ws001"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mFileLock:Ljava/nio/channels/FileLock;

.field private mFileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mContext:Landroid/content/Context;

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFile:Ljava/io/File;

    .line 62
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 63
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_1

    .line 68
    const-string v0, "ws000"

    const-string v1, "channel is null"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_1
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ws000"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mContext:Landroid/content/Context;

    .line 88
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFile:Ljava/io/File;

    .line 89
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFile:Ljava/io/File;

    invoke-static {v0}, Lcom/qihoo360/replugin/utils/FileUtils;->forceMkdirParent(Ljava/io/File;)V

    .line 91
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 93
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 94
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ws000"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized isLocked()Z
    .locals 2

    monitor-enter p0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/qihoo360/loader/utils/ProcessLocker;->tryLock()Z

    move-result v0

    .line 112
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/qihoo360/loader/utils/ProcessLocker;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 107
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized lock()Z
    .locals 4

    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 193
    monitor-exit p0

    return v1

    .line 196
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileLock:Ljava/nio/channels/FileLock;

    .line 197
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileLock:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 198
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 204
    :cond_1
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "ws000"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    monitor-exit p0

    return v1

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized tryLock()Z
    .locals 4

    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 126
    monitor-exit p0

    return v1

    .line 129
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileLock:Ljava/nio/channels/FileLock;

    .line 130
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileLock:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 131
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 137
    :cond_1
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "ws000"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    monitor-exit p0

    return v1

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized tryLockTimeWait(II)Z
    .locals 5
    .param p1, "ms"    # I
    .param p2, "interval"    # I

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 150
    monitor-exit p0

    return v1

    .line 153
    :cond_0
    if-gtz p1, :cond_1

    .line 154
    const/4 p1, 0x1

    .line 156
    :cond_1
    if-gtz p2, :cond_2

    .line 157
    const/4 p2, 0x1

    .line 160
    :cond_2
    const/4 v0, 0x0

    .line 160
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_5

    .line 162
    :try_start_1
    iget-object v2, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileLock:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    goto :goto_1

    .line 178
    .end local v0    # "i":I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 163
    .restart local v0    # "i":I
    :catch_1
    move-exception v2

    .line 167
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileLock:Ljava/nio/channels/FileLock;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    .line 168
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 172
    :cond_3
    :try_start_3
    rem-int/lit16 v2, v0, 0x3e8

    if-nez v2, :cond_4

    .line 173
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait process lock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogRelease;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_4
    int-to-long v2, p2

    invoke-static {v2, v3, v1}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    add-int/2addr v0, p2

    goto :goto_0

    .line 178
    .end local v0    # "i":I
    :goto_2
    nop

    .line 180
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v2, "ws000"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_3

    .line 182
    :cond_5
    nop

    .line 183
    :goto_3
    monitor-exit p0

    return v1

    .line 148
    .end local p1    # "ms":I
    .end local p2    # "interval":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unlock()V
    .locals 3

    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileLock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "ws001"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 223
    :try_start_3
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    goto :goto_1

    .line 224
    :catch_1
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v1, "ws001"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    .line 232
    :try_start_5
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 237
    goto :goto_2

    .line 233
    :catch_2
    move-exception v0

    .line 235
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_6
    const-string v1, "ws001"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFile:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/qihoo360/loader/utils/ProcessLocker;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 244
    :cond_3
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
