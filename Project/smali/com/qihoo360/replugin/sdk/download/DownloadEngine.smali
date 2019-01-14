.class public final Lcom/qihoo360/replugin/sdk/download/DownloadEngine;
.super Lcom/liulishuo/filedownloader/FileDownloadListener;
.source "DownloadEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0018\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0014J \u0010\u0012\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0014J \u0010\u0015\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0014J \u0010\u0016\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0014J\u0016\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u0008J\u0012\u0010\u0019\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u0010\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0014R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/qihoo360/replugin/sdk/download/DownloadEngine;",
        "Lcom/liulishuo/filedownloader/FileDownloadListener;",
        "()V",
        "downloadPath",
        "",
        "getDownloadPath",
        "()Ljava/lang/String;",
        "listener",
        "Lcom/qihoo360/replugin/sdk/b/Dback;",
        "mQueueSet",
        "Lcom/liulishuo/filedownloader/FileDownloadQueueSet;",
        "completed",
        "",
        "var1",
        "Lcom/liulishuo/filedownloader/BaseDownloadTask;",
        "error",
        "var2",
        "",
        "paused",
        "",
        "var3",
        "pending",
        "progress",
        "startDownload",
        "Lcom/qihoo360/replugin/sdk/model/P;",
        "started",
        "warn",
        "Companion",
        "host-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final Companion:Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;

.field private static final TAG:Ljava/lang/String;

# The value of this static final field might be set in the static constructor
.field private static final downloadRetryTimes:I = 0x1


# instance fields
.field private final downloadPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private listener:Lcom/qihoo360/replugin/sdk/b/Dback;

.field private final mQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->Companion:Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;

    .line 102
    const-class v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->TAG:Ljava/lang/String;

    .line 103
    const/4 v0, 0x1

    sput v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->downloadRetryTimes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadListener;-><init>()V

    .line 28
    invoke-static {}, Lcom/qihoo360/replugin/sdk/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->setup(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    move-object v1, p0

    check-cast v1, Lcom/liulishuo/filedownloader/FileDownloadListener;

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;-><init>(Lcom/liulishuo/filedownloader/FileDownloadListener;)V

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->mQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    .line 30
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->mQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->disableCallbackProgressTimes()Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    .line 31
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->mQueueSet:Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloadQueueSet;->setAutoRetryTimes(I)Lcom/liulishuo/filedownloader/FileDownloadQueueSet;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qihoo360/replugin/sdk/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "a.a()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "a.a().filesDir"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "plugins"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->downloadPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDownloadRetryTimes$cp()I
    .locals 1

    .line 22
    sget v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->downloadRetryTimes:I

    return v0
.end method

.method public static final synthetic access$getListener$p(Lcom/qihoo360/replugin/sdk/download/DownloadEngine;)Lcom/qihoo360/replugin/sdk/b/Dback;
    .locals 1
    .param p0, "$this"    # Lcom/qihoo360/replugin/sdk/download/DownloadEngine;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->listener:Lcom/qihoo360/replugin/sdk/b/Dback;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setListener$p(Lcom/qihoo360/replugin/sdk/download/DownloadEngine;Lcom/qihoo360/replugin/sdk/b/Dback;)V
    .locals 0
    .param p0, "$this"    # Lcom/qihoo360/replugin/sdk/download/DownloadEngine;
    .param p1, "<set-?>"    # Lcom/qihoo360/replugin/sdk/b/Dback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 22
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->listener:Lcom/qihoo360/replugin/sdk/b/Dback;

    return-void
.end method


# virtual methods
.method protected completed(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 12
    .param p1, "var1"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "var1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.qihoo360.replugin.sdk.model.P"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lcom/qihoo360/replugin/sdk/model/P;

    .line 50
    .local v0, "var2":Lcom/qihoo360/replugin/sdk/model/P;
    if-eqz v0, :cond_5

    .line 51
    sget-object v1, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->Companion:Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;

    invoke-static {v1}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;->access$getTAG$p(Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " download completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v1, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/sdk/model/P;->getPackagename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/qihoo360/replugin/sdk/model/P;->getVersion()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->a(Ljava/lang/String;I)V

    .line 53
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lco/bxvip/android/commonlib/utils/MD5;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "md5Value":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/qihoo360/replugin/sdk/model/P;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-static {v1}, Lco/bxvip/android/commonlib/utils/MD5;->calculateMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/qihoo360/replugin/sdk/model/P;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/qihoo360/replugin/sdk/model/P;->getSdkcode()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/qihoo360/replugin/sdk/BxPluginConfig;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v3, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;

    invoke-direct {v3, p0, p1}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;-><init>(Lcom/qihoo360/replugin/sdk/download/DownloadEngine;Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto :goto_0

    .line 73
    :cond_2
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 74
    sget-object v3, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->Companion:Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;

    invoke-static {v3}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;->access$getTAG$p(Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " md5 error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_3
    iget-object v3, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->listener:Lcom/qihoo360/replugin/sdk/b/Dback;

    if-eqz v3, :cond_5

    .line 77
    iget-object v3, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->listener:Lcom/qihoo360/replugin/sdk/b/Dback;

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v3}, Lcom/qihoo360/replugin/sdk/b/Dback;->b()V

    .line 79
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "md5Value":Ljava/lang/String;
    :cond_5
    :goto_0
    nop

    .line 82
    return-void
.end method

.method protected error(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "var1"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "var2"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "var1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "var2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->Companion:Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;

    invoke-static {v0}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;->access$getTAG$p(Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " download error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->listener:Lcom/qihoo360/replugin/sdk/b/Dback;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->listener:Lcom/qihoo360/replugin/sdk/b/Dback;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0}, Lcom/qihoo360/replugin/sdk/b/Dback;->b()V

    .line 93
    :cond_2
    return-void
.end method

.method public final getDownloadPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method protected paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 1
    .param p1, "var1"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    const-string v0, "var1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 1
    .param p1, "var1"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    const-string v0, "var1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 1
    .param p1, "var1"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    const-string v0, "var1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public final startDownload(Lcom/qihoo360/replugin/sdk/model/P;Lcom/qihoo360/replugin/sdk/b/Dback;)V
    .locals 3
    .param p1, "var1"    # Lcom/qihoo360/replugin/sdk/model/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "var2"    # Lcom/qihoo360/replugin/sdk/b/Dback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "var1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "var2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/replugin/sdk/model/P;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloader;->create(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setTag(Ljava/lang/Object;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->downloadPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setPath(Ljava/lang/String;Z)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/liulishuo/filedownloader/FileDownloadListener;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setListener(Lcom/liulishuo/filedownloader/FileDownloadListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->start()I

    .line 37
    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->listener:Lcom/qihoo360/replugin/sdk/b/Dback;

    .line 38
    return-void
.end method

.method protected started(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0
    .param p1, "var1"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-super {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadListener;->started(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V

    .line 42
    return-void
.end method

.method protected warn(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 3
    .param p1, "var1"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "var1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->Companion:Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;

    invoke-static {v0}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;->access$getTAG$p(Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " this download task has already in queue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return-void
.end method
