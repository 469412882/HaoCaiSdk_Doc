.class public abstract Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;
.super Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.source "LargeMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(I)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;->isLargeFile:Z

    .line 34
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getSmallSofarBytes()I
    .locals 5

    .line 42
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;->getLargeSofarBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 43
    const v0, 0x7fffffff

    return v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;->getLargeSofarBytes()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSmallTotalBytes()I
    .locals 5

    .line 51
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;->getLargeTotalBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 52
    const v0, 0x7fffffff

    return v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;->getLargeTotalBytes()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
