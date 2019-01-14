.class public abstract Lcom/liulishuo/filedownloader/event/IDownloadEvent;
.super Ljava/lang/Object;
.source "IDownloadEvent.java"


# instance fields
.field public callback:Ljava/lang/Runnable;

.field protected final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->callback:Ljava/lang/Runnable;

    .line 29
    iput-object p1, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->id:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "order"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->callback:Ljava/lang/Runnable;

    .line 37
    iput-object p1, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->id:Ljava/lang/String;

    .line 38
    if-eqz p2, :cond_0

    .line 39
    const-string v0, "do not handle ORDER any more, %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->id:Ljava/lang/String;

    return-object v0
.end method
