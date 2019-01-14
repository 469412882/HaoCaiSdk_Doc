.class Lcom/qihoo360/loader2/PmBase$3;
.super Ljava/lang/Object;
.source "PmBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/loader2/PmBase;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo360/loader2/PmBase;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/qihoo360/loader2/PmBase;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/loader2/PmBase;

    .line 780
    iput-object p1, p0, Lcom/qihoo360/loader2/PmBase$3;->this$0:Lcom/qihoo360/loader2/PmBase;

    iput-object p2, p0, Lcom/qihoo360/loader2/PmBase$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 783
    iget-object v0, p0, Lcom/qihoo360/loader2/PmBase$3;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.qihoo360.replugin.load_large_plugin.dismiss_dlg"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/base/IPC;->sendLocalBroadcast2All(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 784
    return-void
.end method
