.class public Lcom/liulishuo/filedownloader/util/FileDownloadLog;
.super Ljava/lang/Object;
.source "FileDownloadLog.java"


# static fields
.field public static NEED_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "FileDownloader."


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 46
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->log(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 38
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->log(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 34
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method private static getTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileDownloader."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 42
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->log(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method private static varargs log(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method private static varargs log(ILjava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "priority"    # I
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 62
    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 63
    .local v0, "force":Z
    :goto_0
    if-nez v0, :cond_1

    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-nez v1, :cond_1

    .line 64
    return-void

    .line 67
    :cond_1
    invoke-static {p1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->getTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p4}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz p2, :cond_2

    .line 69
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    :cond_2
    return-void
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 54
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->log(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 50
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->log(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method
