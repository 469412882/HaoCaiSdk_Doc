.class Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceReferenceManager$ServicePhantomRef;
.super Ljava/lang/ref/PhantomReference;
.source "PluginServiceReferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceReferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServicePhantomRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# instance fields
.field final pluginName:Ljava/lang/String;

.field final serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p1, "pluginName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "r"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p4, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Landroid/os/IBinder;>;"
    invoke-direct {p0, p3, p4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 49
    iput-object p1, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceReferenceManager$ServicePhantomRef;->pluginName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/qihoo360/mobilesafe/svcmanager/PluginServiceReferenceManager$ServicePhantomRef;->serviceName:Ljava/lang/String;

    .line 51
    return-void
.end method
