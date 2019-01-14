.class final Lcom/qihoo360/replugin/component/service/ServiceDispatcher;
.super Ljava/lang/Object;
.source "ServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/component/service/ServiceDispatcher$DeathMonitor;,
        Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;,
        Lcom/qihoo360/replugin/component/service/ServiceDispatcher$InnerConnection;,
        Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;
    }
.end annotation


# instance fields
.field private final mActiveConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/utils/basic/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/os/Handler;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mFlags:I

.field private mForgotten:Z

.field private final mIServiceConnection:Lcom/qihoo360/replugin/component/service/ServiceDispatcher$InnerConnection;

.field private final mLocation:Lcom/qihoo360/replugin/component/service/ServiceConnectionLeaked;

.field private final mProcess:I

.field private mUnbindLocation:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;II)V
    .locals 2
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activityThread"    # Landroid/os/Handler;
    .param p4, "flags"    # I
    .param p5, "process"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-direct {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActiveConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 83
    new-instance v0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$InnerConnection;

    invoke-direct {v0, p0}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$InnerConnection;-><init>(Lcom/qihoo360/replugin/component/service/ServiceDispatcher;)V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mIServiceConnection:Lcom/qihoo360/replugin/component/service/ServiceDispatcher$InnerConnection;

    .line 84
    iput-object p1, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 85
    iput-object p2, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mContext:Landroid/content/Context;

    .line 86
    iput-object p3, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/qihoo360/replugin/component/service/ServiceConnectionLeaked;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qihoo360/replugin/component/service/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mLocation:Lcom/qihoo360/replugin/component/service/ServiceConnectionLeaked;

    .line 88
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mLocation:Lcom/qihoo360/replugin/component/service/ServiceConnectionLeaked;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/component/service/ServiceConnectionLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 89
    iput p4, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mFlags:I

    .line 90
    iput p5, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mProcess:I

    .line 91
    return-void
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 148
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v1, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;-><init>(Lcom/qihoo360/replugin/component/service/ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 153
    :goto_0
    return-void
.end method

.method public death(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 158
    monitor-enter p0

    .line 160
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActiveConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v1, p1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;

    move-object v0, v1

    .line 161
    .local v0, "old":Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-eq v1, p2, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    iget-object v1, v0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v2, v0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 167
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v2, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$RunConnection;-><init>(Lcom/qihoo360/replugin/component/service/ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 174
    :goto_0
    return-void

    .line 164
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit p0

    return-void

    .line 167
    .end local v0    # "old":Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;
    :catchall_0
    move-exception v1

    .line 167
    .restart local v0    # "old":Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 180
    monitor-enter p0

    .line 181
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mForgotten:Z

    if-eqz v1, :cond_0

    .line 184
    monitor-exit p0

    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActiveConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v1, p1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .local v1, "old":Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;
    if-eqz v1, :cond_1

    :try_start_1
    iget-object v2, v1, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-ne v2, p2, :cond_1

    .line 189
    monitor-exit p0

    return-void

    .line 192
    :cond_1
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 195
    new-instance v3, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;

    invoke-direct {v3, v0}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;-><init>(Lcom/qihoo360/replugin/component/service/ServiceDispatcher$1;)V

    move-object v0, v3

    .line 196
    .local v0, "info":Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;
    iput-object p2, v0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 197
    new-instance v3, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$DeathMonitor;

    invoke-direct {v3, p0, p1, p2}, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$DeathMonitor;-><init>(Lcom/qihoo360/replugin/component/service/ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iput-object v3, v0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    :try_start_2
    iget-object v3, v0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 200
    iget-object v3, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActiveConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v3, p1, v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 206
    goto :goto_0

    .line 201
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v3, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActiveConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v3, p1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    monitor-exit p0

    return-void

    .line 210
    .end local v0    # "info":Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActiveConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :goto_0
    if-eqz v1, :cond_3

    .line 214
    iget-object v0, v1, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v3, v1, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 216
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    if-eqz v1, :cond_4

    .line 220
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 223
    :cond_4
    if-eqz p2, :cond_5

    .line 224
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 226
    :cond_5
    return-void

    .line 216
    .end local v1    # "old":Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 216
    .restart local v1    # "old":Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 229
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 230
    return-void
.end method

.method doForget()V
    .locals 5

    .line 109
    monitor-enter p0

    .line 110
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 110
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActiveConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActiveConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v2, v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;

    .line 112
    .local v2, "ci":Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;
    iget-object v3, v2, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v4, v2, Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v4, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 110
    .end local v2    # "ci":Lcom/qihoo360/replugin/component/service/ServiceDispatcher$ConnectionInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActiveConnections:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->clear()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mForgotten:Z

    .line 116
    monitor-exit p0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getFlags()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mFlags:I

    return v0
.end method

.method getIServiceConnection()Lcom/qihoo360/loader2/mgr/IServiceConnection;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mIServiceConnection:Lcom/qihoo360/replugin/component/service/ServiceDispatcher$InnerConnection;

    return-object v0
.end method

.method getLocation()Lcom/qihoo360/replugin/component/service/ServiceConnectionLeaked;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mLocation:Lcom/qihoo360/replugin/component/service/ServiceConnectionLeaked;

    return-object v0
.end method

.method getProcess()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mProcess:I

    return v0
.end method

.method getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method getUnbindLocation()Ljava/lang/RuntimeException;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method setUnbindLocation(Ljava/lang/RuntimeException;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .line 136
    iput-object p1, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    .line 137
    return-void
.end method

.method validate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityThread"    # Landroid/os/Handler;

    .line 94
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " registered with differing Context (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eq v0, p2, :cond_1

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " registered with differing handler (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    return-void
.end method
