.class final Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;->invoke()V
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
.field final synthetic $var3:Lcom/qihoo360/replugin/model/PluginInfo;

.field final synthetic this$0:Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1$1;->this$0:Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;

    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1$1;->$var3:Lcom/qihoo360/replugin/model/PluginInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1$1;->$var3:Lcom/qihoo360/replugin/model/PluginInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1$1;->this$0:Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;

    iget-object v0, v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;->this$0:Lcom/qihoo360/replugin/sdk/download/DownloadEngine;

    invoke-static {v0}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->access$getListener$p(Lcom/qihoo360/replugin/sdk/download/DownloadEngine;)Lcom/qihoo360/replugin/sdk/b/Dback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1$1;->this$0:Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;

    iget-object v0, v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;->this$0:Lcom/qihoo360/replugin/sdk/download/DownloadEngine;

    invoke-static {v0}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->access$getListener$p(Lcom/qihoo360/replugin/sdk/download/DownloadEngine;)Lcom/qihoo360/replugin/sdk/b/Dback;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/qihoo360/replugin/sdk/b/Dback;->b()V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1$1;->$var3:Lcom/qihoo360/replugin/model/PluginInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1$1;->this$0:Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;

    iget-object v0, v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;->this$0:Lcom/qihoo360/replugin/sdk/download/DownloadEngine;

    invoke-static {v0}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->access$getListener$p(Lcom/qihoo360/replugin/sdk/download/DownloadEngine;)Lcom/qihoo360/replugin/sdk/b/Dback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1$1;->this$0:Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;

    iget-object v0, v0, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$completed$1;->this$0:Lcom/qihoo360/replugin/sdk/download/DownloadEngine;

    invoke-static {v0}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->access$getListener$p(Lcom/qihoo360/replugin/sdk/download/DownloadEngine;)Lcom/qihoo360/replugin/sdk/b/Dback;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {v0}, Lcom/qihoo360/replugin/sdk/b/Dback;->a()V

    .line 70
    :cond_3
    return-void
.end method
