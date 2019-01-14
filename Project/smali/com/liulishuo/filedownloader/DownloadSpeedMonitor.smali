.class public Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;
.super Ljava/lang/Object;
.source "DownloadSpeedMonitor.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;
.implements Lcom/liulishuo/filedownloader/IDownloadSpeed$Lookup;


# instance fields
.field private mLastRefreshSofarBytes:J

.field private mLastRefreshTime:J

.field private mMinIntervalUpdateSpeed:I

.field private mSpeed:I

.field private mStartSofarBytes:J

.field private mStartTime:J

.field private mTotalBytes:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mMinIntervalUpdateSpeed:I

    return-void
.end method


# virtual methods
.method public end(J)V
    .locals 10
    .param p1, "sofarBytes"    # J

    .line 47
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 48
    return-void

    .line 51
    :cond_0
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mStartSofarBytes:J

    sub-long v4, p1, v0

    .line 52
    .local v4, "downloadSize":J
    iput-wide v2, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshTime:J

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mStartTime:J

    sub-long v8, v0, v6

    .line 54
    .local v8, "interval":J
    cmp-long v0, v8, v2

    if-gtz v0, :cond_1

    .line 55
    long-to-int v0, v4

    iput v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    goto :goto_0

    .line 57
    :cond_1
    div-long v0, v4, v8

    long-to-int v0, v0

    iput v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    .line 59
    :goto_0
    return-void
.end method

.method public getSpeed()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    return v0
.end method

.method public reset()V
    .locals 2

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshTime:J

    .line 94
    return-void
.end method

.method public setMinIntervalUpdateSpeed(I)V
    .locals 0
    .param p1, "minIntervalUpdateSpeed"    # I

    .line 103
    iput p1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mMinIntervalUpdateSpeed:I

    .line 104
    return-void
.end method

.method public start(J)V
    .locals 2
    .param p1, "startBytes"    # J

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mStartTime:J

    .line 42
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mStartSofarBytes:J

    .line 43
    return-void
.end method

.method public update(J)V
    .locals 9
    .param p1, "sofarBytes"    # J

    .line 63
    iget v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mMinIntervalUpdateSpeed:I

    if-gtz v0, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 69
    .local v0, "isUpdateData":Z
    iget-wide v1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 70
    const/4 v0, 0x1

    .line 71
    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshTime:J

    sub-long v7, v1, v5

    .line 75
    .local v7, "interval":J
    iget v1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mMinIntervalUpdateSpeed:I

    int-to-long v1, v1

    cmp-long v5, v7, v1

    if-gez v5, :cond_2

    iget v1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    if-nez v1, :cond_3

    cmp-long v1, v7, v3

    if-lez v1, :cond_3

    .line 76
    :cond_2
    iget-wide v1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshSofarBytes:J

    sub-long v3, p1, v1

    div-long/2addr v3, v7

    long-to-int v1, v3

    iput v1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    .line 77
    const/4 v1, 0x0

    iget v2, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    .line 78
    const/4 v0, 0x1

    .line 79
    nop

    .line 83
    .end local v7    # "interval":J
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 84
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshSofarBytes:J

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshTime:J

    .line 88
    :cond_4
    return-void
.end method
