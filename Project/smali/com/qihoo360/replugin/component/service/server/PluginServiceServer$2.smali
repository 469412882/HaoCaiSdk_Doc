.class Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$2;
.super Ljava/lang/Object;
.source "PluginServiceServer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->installServiceIfNeededLocked(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

.field final synthetic val$sr:Lcom/qihoo360/replugin/component/service/server/ServiceRecord;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    .line 395
    iput-object p1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$2;->this$0:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    iput-object p2, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$2;->val$sr:Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$2;->this$0:Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;

    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$2;->val$sr:Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;->access$000(Lcom/qihoo360/replugin/component/service/server/PluginServiceServer;Lcom/qihoo360/replugin/component/service/server/ServiceRecord;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 395
    invoke-virtual {p0}, Lcom/qihoo360/replugin/component/service/server/PluginServiceServer$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
