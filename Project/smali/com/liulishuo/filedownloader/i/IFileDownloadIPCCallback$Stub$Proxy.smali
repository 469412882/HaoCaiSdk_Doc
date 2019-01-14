.class Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFileDownloadIPCCallback.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 67
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public callback(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 4
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 80
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.liulishuo.filedownloader.i.IFileDownloadIPCCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCCallback"

    return-object v0
.end method
