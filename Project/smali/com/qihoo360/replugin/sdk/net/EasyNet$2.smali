.class Lcom/qihoo360/replugin/sdk/net/EasyNet$2;
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

.field final synthetic val$var5:Lcom/qihoo360/replugin/sdk/net/IResponseListener;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/sdk/net/EasyNet;Lcom/qihoo360/replugin/sdk/net/IResponseListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/replugin/sdk/net/EasyNet;

    .line 46
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/EasyNet$2;->this$0:Lcom/qihoo360/replugin/sdk/net/EasyNet;

    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/net/EasyNet$2;->val$var5:Lcom/qihoo360/replugin/sdk/net/IResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/EasyNet$2;->val$var5:Lcom/qihoo360/replugin/sdk/net/IResponseListener;

    const-string v1, "server response exception"

    const/4 v2, 0x0

    check-cast v2, Landroid/os/Bundle;

    const/4 v3, 0x3

    const/16 v4, 0x4e89

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/qihoo360/replugin/sdk/net/IResponseListener;->onError(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 49
    return-void
.end method
