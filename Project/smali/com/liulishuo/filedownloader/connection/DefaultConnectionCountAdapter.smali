.class public Lcom/liulishuo/filedownloader/connection/DefaultConnectionCountAdapter;
.super Ljava/lang/Object;
.source "DefaultConnectionCountAdapter.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;


# static fields
.field private static final FOUR_CONNECTION_UPPER_LIMIT:J = 0x6400000L

.field private static final ONE_CONNECTION_UPPER_LIMIT:J = 0x100000L

.field private static final THREE_CONNECTION_UPPER_LIMIT:J = 0x3200000L

.field private static final TWO_CONNECTION_UPPER_LIMIT:J = 0x500000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public determineConnectionCount(ILjava/lang/String;Ljava/lang/String;J)I
    .locals 3
    .param p1, "downloadId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "totalLength"    # J

    .line 38
    const-wide/32 v0, 0x100000

    cmp-long v2, p4, v0

    if-gez v2, :cond_0

    .line 39
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_0
    const-wide/32 v0, 0x500000

    cmp-long v2, p4, v0

    if-gez v2, :cond_1

    .line 43
    const/4 v0, 0x2

    return v0

    .line 46
    :cond_1
    const-wide/32 v0, 0x3200000

    cmp-long v2, p4, v0

    if-gez v2, :cond_2

    .line 47
    const/4 v0, 0x3

    return v0

    .line 50
    :cond_2
    const-wide/32 v0, 0x6400000

    cmp-long v2, p4, v0

    if-gez v2, :cond_3

    .line 51
    const/4 v0, 0x4

    return v0

    .line 54
    :cond_3
    const/4 v0, 0x5

    return v0
.end method
