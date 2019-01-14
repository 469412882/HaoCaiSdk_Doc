.class final Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->completed(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $var1:Lcom/liulishuo/filedownloader/BaseDownloadTask;

.field final synthetic this$0:Lcom/qihoo360/replugin/sdk/download/DownloadEngine;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/sdk/download/DownloadEngine;Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;->this$0:Lcom/qihoo360/replugin/sdk/download/DownloadEngine;

    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;->$var1:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;->$var1:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;->$var1:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/replugin/RePlugin;->install(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v0

    .line 62
    .local v0, "var3":Lcom/qihoo360/replugin/model/PluginInfo;
    sget-object v1, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    new-instance v2, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1$1;

    invoke-direct {v2, p0, v0}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1$1;-><init>(Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;Lcom/qihoo360/replugin/model/PluginInfo;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v2}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->post(Lkotlin/jvm/functions/Function0;)V

    .line 71
    .end local v0    # "var3":Lcom/qihoo360/replugin/model/PluginInfo;
    return-void
.end method
