.class public Lcom/liulishuo/filedownloader/download/ConnectionProfile;
.super Ljava/lang/Object;
.source "ConnectionProfile.java"


# instance fields
.field final contentLength:J

.field final currentOffset:J

.field final endOffset:J

.field final startOffset:J


# direct methods
.method constructor <init>(JJJJ)V
    .locals 0
    .param p1, "startOffset"    # J
    .param p3, "currentOffset"    # J
    .param p5, "endOffset"    # J
    .param p7, "contentLength"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->startOffset:J

    .line 34
    iput-wide p3, p0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->currentOffset:J

    .line 35
    iput-wide p5, p0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->endOffset:J

    .line 36
    iput-wide p7, p0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->contentLength:J

    .line 37
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 41
    const-string v0, "range[%d, %d) current offset[%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->startOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->endOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->currentOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
