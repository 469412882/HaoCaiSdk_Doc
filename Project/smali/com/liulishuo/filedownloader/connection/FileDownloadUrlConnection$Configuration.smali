.class public Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;
.super Ljava/lang/Object;
.source "FileDownloadUrlConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field private connectTimeout:Ljava/lang/Integer;

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)Ljava/net/Proxy;
    .locals 1
    .param p0, "x0"    # Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;

    .line 137
    iget-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;

    .line 137
    iget-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->readTimeout:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;

    .line 137
    iget-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->connectTimeout:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public connectTimeout(I)Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;
    .locals 1
    .param p1, "connectTimeout"    # I

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->connectTimeout:Ljava/lang/Integer;

    .line 184
    return-object p0
.end method

.method public proxy(Ljava/net/Proxy;)Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .line 150
    iput-object p1, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->proxy:Ljava/net/Proxy;

    .line 151
    return-object p0
.end method

.method public readTimeout(I)Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;
    .locals 1
    .param p1, "readTimeout"    # I

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->readTimeout:Ljava/lang/Integer;

    .line 168
    return-object p0
.end method
