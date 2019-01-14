.class Lcom/qihoo360/replugin/sdk/net/EasyNet$1;
.super Ljava/lang/Object;
.source "EasyNet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/replugin/sdk/net/EasyNet;->request(Lcom/qihoo360/replugin/sdk/net/Request$Method;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Lcom/qihoo360/replugin/sdk/net/IResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo360/replugin/sdk/net/EasyNet;

.field final synthetic val$var13:Lcom/qihoo360/replugin/sdk/net/Response;

.field final synthetic val$var5:Lcom/qihoo360/replugin/sdk/net/IResponseListener;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/sdk/net/EasyNet;Lcom/qihoo360/replugin/sdk/net/IResponseListener;Lcom/qihoo360/replugin/sdk/net/Response;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/replugin/sdk/net/EasyNet;

    .line 40
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/EasyNet$1;->this$0:Lcom/qihoo360/replugin/sdk/net/EasyNet;

    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/net/EasyNet$1;->val$var5:Lcom/qihoo360/replugin/sdk/net/IResponseListener;

    iput-object p3, p0, Lcom/qihoo360/replugin/sdk/net/EasyNet$1;->val$var13:Lcom/qihoo360/replugin/sdk/net/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/EasyNet$1;->val$var5:Lcom/qihoo360/replugin/sdk/net/IResponseListener;

    iget-object v1, p0, Lcom/qihoo360/replugin/sdk/net/EasyNet$1;->val$var13:Lcom/qihoo360/replugin/sdk/net/Response;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/sdk/net/Response;->body()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qihoo360/replugin/sdk/net/IResponseListener;->onSuccess(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
