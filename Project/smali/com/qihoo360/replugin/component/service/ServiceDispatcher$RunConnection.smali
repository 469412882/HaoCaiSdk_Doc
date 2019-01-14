.class final Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;
.super Ljava/lang/Object;
.source "ServiceDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RunConnection"
.end annotation


# instance fields
.field final mCommand:I

.field final mName:Landroid/content/ComponentName;

.field final mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/qihoo360/replugin/component/service/ServiceDispatcher;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/component/service/ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V
    .locals 0
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "service"    # Landroid/os/IBinder;
    .param p4, "command"    # I

    .line 233
    iput-object p1, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;->this$0:Lcom/qihoo360/replugin/component/service/ServiceDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    .line 235
    iput-object p3, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    .line 236
    iput p4, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;->mCommand:I

    .line 237
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 240
    iget v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;->mCommand:I

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;->this$0:Lcom/qihoo360/replugin/component/service/ServiceDispatcher;

    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 242
    :cond_0
    iget v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;->mCommand:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;->this$0:Lcom/qihoo360/replugin/component/service/ServiceDispatcher;

    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 245
    :cond_1
    :goto_0
    return-void
.end method
