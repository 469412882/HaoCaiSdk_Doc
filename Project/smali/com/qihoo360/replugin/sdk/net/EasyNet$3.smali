.class Lcom/qihoo360/replugin/sdk/net/EasyNet$3;
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

.field final synthetic val$var14:Ljava/io/IOException;

.field final synthetic val$var5:Lcom/qihoo360/replugin/sdk/net/IResponseListener;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/sdk/net/EasyNet;Lcom/qihoo360/replugin/sdk/net/IResponseListener;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/replugin/sdk/net/EasyNet;

    .line 53
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/EasyNet$3;->this$0:Lcom/qihoo360/replugin/sdk/net/EasyNet;

    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/net/EasyNet$3;->val$var5:Lcom/qihoo360/replugin/sdk/net/IResponseListener;

    iput-object p3, p0, Lcom/qihoo360/replugin/sdk/net/EasyNet$3;->val$var14:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/EasyNet$3;->val$var5:Lcom/qihoo360/replugin/sdk/net/IResponseListener;

    iget-object v1, p0, Lcom/qihoo360/replugin/sdk/net/EasyNet$3;->val$var14:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Landroid/os/Bundle;

    const/4 v3, 0x3

    const/16 v4, 0x4e86

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/qihoo360/replugin/sdk/net/IResponseListener;->onError(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 56
    return-void
.end method
