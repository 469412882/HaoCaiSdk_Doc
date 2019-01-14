.class Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;
.super Ljava/lang/Object;
.source "ServiceWrapper.java"

# interfaces
.implements Landroid/os/IBinder;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppCpntext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-boolean v0, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    sput-boolean v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->DEBUG:Z

    .line 41
    sget-boolean v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ServiceWrapper"

    goto :goto_0

    :cond_0
    const-class v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->mAppCpntext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->mRemote:Landroid/os/IBinder;

    .line 74
    iput-object p2, p0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->mName:Ljava/lang/String;

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "linkToDeath ex"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static factory(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "descriptor":Ljava/lang/String;
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 57
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 55
    sget-object v2, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->TAG:Ljava/lang/String;

    const-string v3, "getInterfaceDescriptor()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 59
    .local v1, "iin":Landroid/os/IInterface;
    if-eqz v1, :cond_1

    .line 66
    return-object p2

    .line 68
    :cond_1
    new-instance v2, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;

    invoke-direct {v2, p0, p1, p2}, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v2
.end method

.method private getRemoteBinder()Landroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->mRemote:Landroid/os/IBinder;

    .line 86
    .local v0, "remote":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 87
    return-object v0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->mAppCpntext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qihoo360/mobilesafe/svcmanager/QihooServiceManager;->getServerChannel(Landroid/content/Context;)Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel;

    move-result-object v1

    .line 90
    .local v1, "serviceChannel":Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel;
    if-nez v1, :cond_1

    .line 93
    sget-object v2, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->TAG:Ljava/lang/String;

    const-string v3, "sw.grb: s is n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 97
    if-nez v0, :cond_2

    .line 98
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 101
    :cond_2
    iput-object v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->mRemote:Landroid/os/IBinder;

    .line 102
    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 179
    sget-boolean v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceWrapper [binderDied]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->mRemote:Landroid/os/IBinder;

    .line 183
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->getRemoteBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    return-void
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->getRemoteBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 3

    .line 125
    :try_start_0
    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->getRemoteBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "isBinderAlive()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 2
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    sget-boolean v0, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ServiceWrapper does NOT support Death Recipient!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    return-void
.end method

.method public pingBinder()Z
    .locals 3

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->getRemoteBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 116
    sget-object v1, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getRemoteBinder()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->getRemoteBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 140
    sget-object v1, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "queryLocalInterface()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/svcmanager/ServiceWrapper;->getRemoteBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 174
    const/4 v0, 0x0

    return v0
.end method
