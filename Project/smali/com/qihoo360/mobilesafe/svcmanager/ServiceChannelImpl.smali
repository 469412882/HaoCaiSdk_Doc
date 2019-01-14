.class Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;
.super Ljava/lang/Object;
.source "ServiceChannelImpl.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sDelayedServices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/qihoo360/replugin/IBinderGetter;",
            ">;"
        }
    .end annotation
.end field

.field static sServiceChannelCursor:Landroid/database/MatrixCursor;

.field static sServiceChannelImpl:Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub;

.field private static sServices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    sput-boolean v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;->DEBUG:Z

    .line 42
    sget-boolean v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ServiceChannelImpl"

    goto :goto_0

    :cond_0
    const-class v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;->sServices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;->sDelayedServices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    new-instance v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl$1;

    invoke-direct {v0}, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl$1;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;->sServiceChannelImpl:Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub;

    .line 141
    sget-object v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;->sServiceChannelImpl:Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub;

    invoke-static {v0}, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelCursor;->makeCursor(Landroid/os/IBinder;)Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelCursor;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;->sServiceChannelCursor:Landroid/database/MatrixCursor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 38
    sget-object v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;->sServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 38
    sget-object v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelImpl;->sDelayedServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
