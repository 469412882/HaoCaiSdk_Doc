.class public Lcom/liulishuo/filedownloader/services/DefaultIdGenerator;
.super Ljava/lang/Object;
.source "DefaultIdGenerator.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateId(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pathAsDirectory"    # Z

    .line 37
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    .line 38
    const-string v3, "%sp%s@dir"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v0

    invoke-static {v3, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 40
    :cond_0
    const-string v3, "%sp%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v0

    invoke-static {v3, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public transOldId(ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .param p1, "oldId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "pathAsDirectory"    # Z

    .line 32
    invoke-virtual {p0, p2, p3, p4}, Lcom/liulishuo/filedownloader/services/DefaultIdGenerator;->generateId(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method
