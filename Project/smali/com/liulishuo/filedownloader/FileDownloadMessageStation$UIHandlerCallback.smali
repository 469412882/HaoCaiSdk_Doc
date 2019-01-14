.class Lcom/liulishuo/filedownloader/FileDownloadMessageStation$UIHandlerCallback;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/FileDownloadMessageStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandlerCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/FileDownloadMessageStation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liulishuo/filedownloader/FileDownloadMessageStation$1;

    .line 152
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation$UIHandlerCallback;-><init>()V

    return-void
.end method

.method private dispose(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/filedownloader/IFileDownloadMessenger;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p1, "disposingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liulishuo/filedownloader/IFileDownloadMessenger;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    .line 169
    .local v1, "iFileDownloadMessenger":Lcom/liulishuo/filedownloader/IFileDownloadMessenger;
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->handoverMessage()V

    .line 170
    .end local v1    # "iFileDownloadMessenger":Lcom/liulishuo/filedownloader/IFileDownloadMessenger;
    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 173
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/IFileDownloadMessenger;->handoverMessage()V

    goto :goto_0

    .line 158
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 160
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation$UIHandlerCallback;->dispose(Ljava/util/ArrayList;)V

    .line 161
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadMessageStation;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/FileDownloadMessageStation;->access$300(Lcom/liulishuo/filedownloader/FileDownloadMessageStation;)V

    .line 163
    :cond_1
    :goto_0
    return v1
.end method
