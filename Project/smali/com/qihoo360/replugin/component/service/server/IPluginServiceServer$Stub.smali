.class public abstract Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer$Stub;
.super Landroid/os/Binder;
.source "IPluginServiceServer.java"

# interfaces
.implements Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qihoo360.replugin.component.service.server.IPluginServiceServer"

.field static final TRANSACTION_bindService:I = 0x3

.field static final TRANSACTION_dump:I = 0x5

.field static final TRANSACTION_startService:I = 0x1

.field static final TRANSACTION_stopService:I = 0x2

.field static final TRANSACTION_unbindService:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.qihoo360.replugin.component.service.server.IPluginServiceServer"

    invoke-virtual {p0, p0, v0}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    const-string v0, "com.qihoo360.replugin.component.service.server.IPluginServiceServer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    if-eqz v1, :cond_1

    .line 34
    move-object v1, v0

    check-cast v1, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    return-object v1

    .line 36
    :cond_1
    new-instance v1, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 139
    :pswitch_0
    const-string v0, "com.qihoo360.replugin.component.service.server.IPluginServiceServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer$Stub;->dump()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 129
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1
    const-string v0, "com.qihoo360.replugin.component.service.server.IPluginServiceServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/loader2/mgr/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qihoo360/loader2/mgr/IServiceConnection;

    move-result-object v0

    .line 132
    .local v0, "_arg0":Lcom/qihoo360/loader2/mgr/IServiceConnection;
    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer$Stub;->unbindService(Lcom/qihoo360/loader2/mgr/IServiceConnection;)Z

    move-result v2

    .line 133
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    return v1

    .line 103
    .end local v0    # "_arg0":Lcom/qihoo360/loader2/mgr/IServiceConnection;
    .end local v2    # "_result":Z
    :pswitch_2
    const-string v2, "com.qihoo360.replugin.component.service.server.IPluginServiceServer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 106
    .local v2, "_arg0":Landroid/content/Intent;
    goto :goto_0

    .line 109
    .end local v2    # "_arg0":Landroid/content/Intent;
    :cond_0
    move-object v2, v0

    .line 112
    .restart local v2    # "_arg0":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/qihoo360/loader2/mgr/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qihoo360/loader2/mgr/IServiceConnection;

    move-result-object v3

    .line 114
    .local v3, "_arg1":Lcom/qihoo360/loader2/mgr/IServiceConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 116
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 117
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 117
    .local v0, "_arg3":Landroid/os/Messenger;
    goto :goto_1

    .line 120
    .end local v0    # "_arg3":Landroid/os/Messenger;
    :cond_1
    nop

    .line 122
    .restart local v0    # "_arg3":Landroid/os/Messenger;
    :goto_1
    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer$Stub;->bindService(Landroid/content/Intent;Lcom/qihoo360/loader2/mgr/IServiceConnection;ILandroid/os/Messenger;)I

    move-result v5

    .line 123
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return v1

    .line 81
    .end local v0    # "_arg3":Landroid/os/Messenger;
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Lcom/qihoo360/loader2/mgr/IServiceConnection;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_3
    const-string v2, "com.qihoo360.replugin.component.service.server.IPluginServiceServer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 84
    .restart local v2    # "_arg0":Landroid/content/Intent;
    goto :goto_2

    .line 87
    .end local v2    # "_arg0":Landroid/content/Intent;
    :cond_2
    move-object v2, v0

    .line 90
    .restart local v2    # "_arg0":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 91
    .local v0, "_arg1":Landroid/os/Messenger;
    goto :goto_3

    .line 94
    .end local v0    # "_arg1":Landroid/os/Messenger;
    :cond_3
    nop

    .line 96
    .restart local v0    # "_arg1":Landroid/os/Messenger;
    :goto_3
    invoke-virtual {p0, v2, v0}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer$Stub;->stopService(Landroid/content/Intent;Landroid/os/Messenger;)I

    move-result v3

    .line 97
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return v1

    .line 53
    .end local v0    # "_arg1":Landroid/os/Messenger;
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_result":I
    :pswitch_4
    const-string v2, "com.qihoo360.replugin.component.service.server.IPluginServiceServer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 56
    .restart local v2    # "_arg0":Landroid/content/Intent;
    goto :goto_4

    .line 59
    .end local v2    # "_arg0":Landroid/content/Intent;
    :cond_4
    move-object v2, v0

    .line 62
    .restart local v2    # "_arg0":Landroid/content/Intent;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 63
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 63
    .restart local v0    # "_arg1":Landroid/os/Messenger;
    goto :goto_5

    .line 66
    .end local v0    # "_arg1":Landroid/os/Messenger;
    :cond_5
    nop

    .line 68
    .restart local v0    # "_arg1":Landroid/os/Messenger;
    :goto_5
    invoke-virtual {p0, v2, v0}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer$Stub;->startService(Landroid/content/Intent;Landroid/os/Messenger;)Landroid/content/ComponentName;

    move-result-object v3

    .line 69
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v3, :cond_6

    .line 71
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v3, p3, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 75
    :cond_6
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    :goto_6
    return v1

    .line 48
    .end local v0    # "_arg1":Landroid/os/Messenger;
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_result":Landroid/content/ComponentName;
    :cond_7
    const-string v0, "com.qihoo360.replugin.component.service.server.IPluginServiceServer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
