.class public abstract Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;
.super Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.source "SmallMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnFlowDirectlySnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedFlowDirectlySnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;->isLargeFile:Z

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
.method public getLargeSofarBytes()J
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;->getSmallSofarBytes()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLargeTotalBytes()J
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;->getSmallTotalBytes()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
