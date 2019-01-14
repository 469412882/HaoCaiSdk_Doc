.class Lcom/liulishuo/filedownloader/FileDownloader$1;
.super Ljava/lang/Object;
.source "FileDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/filedownloader/FileDownloader;->pauseAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liulishuo/filedownloader/FileDownloader;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/FileDownloader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liulishuo/filedownloader/FileDownloader;

    .line 270
    iput-object p1, p0, Lcom/liulishuo/filedownloader/FileDownloader$1;->this$0:Lcom/liulishuo/filedownloader/FileDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 273
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->pauseAllTasks()V

    .line 274
    return-void
.end method
