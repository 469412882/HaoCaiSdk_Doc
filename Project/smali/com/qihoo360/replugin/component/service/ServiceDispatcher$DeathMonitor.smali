.class final Lcom/qihoo360/replugin/component/service/ServiceDispatcher$DeathMonitor;
.super Ljava/lang/Object;
.source "ServiceDispatcher.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeathMonitor"
.end annotation


# instance fields
.field final mName:Landroid/content/ComponentName;

.field final mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/qihoo360/replugin/component/service/ServiceDispatcher;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/component/service/ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "service"    # Landroid/os/IBinder;

    .line 253
    iput-object p1, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$DeathMonitor;->this$0:Lcom/qihoo360/replugin/component/service/ServiceDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p2, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$DeathMonitor;->mName:Landroid/content/ComponentName;

    .line 255
    iput-object p3, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$DeathMonitor;->mService:Landroid/os/IBinder;

    .line 256
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$DeathMonitor;->this$0:Lcom/qihoo360/replugin/component/service/ServiceDispatcher;

    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$DeathMonitor;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$DeathMonitor;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->death(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 260
    return-void
.end method
