.class Lcom/qihoo360/replugin/component/service/ServiceDispatcher$InnerConnection;
.super Lcom/qihoo360/loader2/mgr/IServiceConnection$Stub;
.source "ServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerConnection"
.end annotation


# instance fields
.field final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/qihoo360/replugin/component/service/ServiceDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/component/service/ServiceDispatcher;)V
    .locals 1
    .param p1, "sd"    # Lcom/qihoo360/replugin/component/service/ServiceDispatcher;

    .line 67
    invoke-direct {p0}, Lcom/qihoo360/loader2/mgr/IServiceConnection$Stub;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$InnerConnection;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 69
    return-void
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$InnerConnection;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;

    .line 73
    .local v0, "sd":Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1, p2}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 76
    :cond_0
    return-void
.end method
