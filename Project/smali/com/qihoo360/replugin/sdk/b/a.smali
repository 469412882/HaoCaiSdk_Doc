.class public Lcom/qihoo360/replugin/sdk/b/a;
.super Ljava/lang/Object;
.source "a.java"


# static fields
.field private static volatile b:Lcom/qihoo360/replugin/sdk/b/a;


# instance fields
.field private a:Ljava/lang/String;

.field private c:Lcom/qihoo360/replugin/sdk/download/DownloadEngine;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-class v0, Lcom/qihoo360/replugin/sdk/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/b/a;->a:Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;

    invoke-direct {v0}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/b/a;->c:Lcom/qihoo360/replugin/sdk/download/DownloadEngine;

    .line 12
    return-void
.end method

.method public static a()Lcom/qihoo360/replugin/sdk/b/a;
    .locals 3

    .line 15
    sget-object v0, Lcom/qihoo360/replugin/sdk/b/a;->b:Lcom/qihoo360/replugin/sdk/b/a;

    if-nez v0, :cond_1

    .line 16
    const-class v0, Lcom/qihoo360/replugin/sdk/b/a;

    .line 17
    .local v0, "var0":Ljava/lang/Class;
    const-class v1, Lcom/qihoo360/replugin/sdk/b/a;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v2, Lcom/qihoo360/replugin/sdk/b/a;->b:Lcom/qihoo360/replugin/sdk/b/a;

    if-nez v2, :cond_0

    .line 19
    new-instance v2, Lcom/qihoo360/replugin/sdk/b/a;

    invoke-direct {v2}, Lcom/qihoo360/replugin/sdk/b/a;-><init>()V

    sput-object v2, Lcom/qihoo360/replugin/sdk/b/a;->b:Lcom/qihoo360/replugin/sdk/b/a;

    .line 21
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 23
    .end local v0    # "var0":Ljava/lang/Class;
    :cond_1
    :goto_0
    sget-object v0, Lcom/qihoo360/replugin/sdk/b/a;->b:Lcom/qihoo360/replugin/sdk/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/qihoo360/replugin/sdk/model/P;Lcom/qihoo360/replugin/sdk/b/Dback;)V
    .locals 1
    .param p1, "var1"    # Lcom/qihoo360/replugin/sdk/model/P;
    .param p2, "var2"    # Lcom/qihoo360/replugin/sdk/b/Dback;

    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/b/a;->c:Lcom/qihoo360/replugin/sdk/download/DownloadEngine;

    invoke-virtual {v0, p1, p2}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->startDownload(Lcom/qihoo360/replugin/sdk/model/P;Lcom/qihoo360/replugin/sdk/b/Dback;)V

    .line 34
    :cond_0
    return-void
.end method

.method public c()Lcom/qihoo360/replugin/sdk/download/DownloadEngine;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/b/a;->c:Lcom/qihoo360/replugin/sdk/download/DownloadEngine;

    return-object v0
.end method
