.class public Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;
.super Lcom/liulishuo/filedownloader/event/IDownloadEvent;
.source "DownloadServiceConnectChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "event.service.connect.changed"


# instance fields
.field private final serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final status:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;Ljava/lang/Class;)V
    .locals 1
    .param p1, "status"    # Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 27
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "event.service.connect.changed"

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/event/IDownloadEvent;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;->status:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    .line 30
    iput-object p2, p0, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;->serviceClass:Ljava/lang/Class;

    .line 31
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;->status:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    return-object v0
.end method

.method public isSuchService(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 48
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;->serviceClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;->serviceClass:Ljava/lang/Class;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0
.end method
