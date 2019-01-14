.class Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelCursor;
.super Landroid/database/MatrixCursor;
.source "ServiceChannelCursor.java"


# static fields
.field static final DEFAULT_COLUMNS:[Ljava/lang/String;

.field public static final SERVER_CHANNEL_BUNDLE_KEY:Ljava/lang/String; = "servicechannel"


# instance fields
.field mBinderExtra:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "s"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 53
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelCursor;->mBinderExtra:Landroid/os/Bundle;

    .line 55
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelCursor;->mBinderExtra:Landroid/os/Bundle;

    const-string v1, "servicechannel"

    new-instance v2, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;

    invoke-direct {v2, p2}, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    return-void
.end method

.method static final getBinder(Landroid/database/Cursor;)Landroid/os/IBinder;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 44
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v1, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 46
    const-string v1, "servicechannel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;

    .line 47
    .local v1, "parcelBinder":Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;
    invoke-virtual {v1}, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;->getIbinder()Landroid/os/IBinder;

    move-result-object v2

    return-object v2
.end method

.method static final makeCursor(Landroid/os/IBinder;)Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelCursor;
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 40
    new-instance v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelCursor;

    sget-object v1, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelCursor;-><init>([Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceChannelCursor;->mBinderExtra:Landroid/os/Bundle;

    return-object v0
.end method
