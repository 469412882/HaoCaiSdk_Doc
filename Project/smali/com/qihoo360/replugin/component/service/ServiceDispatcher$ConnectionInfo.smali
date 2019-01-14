.class Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;
.super Ljava/lang/Object;
.source "ServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionInfo"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field deathMonitor:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qihoo360/replugin/component/service/ServiceDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qihoo360/replugin/component/service/ServiceDispatcher$1;

    .line 59
    invoke-direct {p0}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;-><init>()V

    return-void
.end method
