.class public abstract Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub;
.super Landroid/os/Binder;
.source "IServiceChannel.java"

# interfaces
.implements Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qihoo360.mobilesafe.svcmanager.IServiceChannel"

.field static final TRANSACTION_addService:I = 0x2

.field static final TRANSACTION_addServiceDelayed:I = 0x3

.field static final TRANSACTION_getPluginService:I = 0x5

.field static final TRANSACTION_getService:I = 0x1

.field static final TRANSACTION_onPluginServiceRefReleased:I = 0x6

.field static final TRANSACTION_removeService:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qihoo360.mobilesafe.svcmanager.IServiceChannel"

    invoke-virtual {p0, p0, v0}, Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.qihoo360.mobilesafe.svcmanager.IServiceChannel"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 102
    :pswitch_0
    const-string v0, "com.qihoo360.mobilesafe.svcmanager.IServiceChannel"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub;->onPluginServiceRefReleased(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    return v1

    .line 88
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_1
    const-string v0, "com.qihoo360.mobilesafe.svcmanager.IServiceChannel"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 95
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2, v3}, Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub;->getPluginService(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v4

    .line 96
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 98
    return v1

    .line 79
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/os/IBinder;
    :pswitch_2
    const-string v0, "com.qihoo360.mobilesafe.svcmanager.IServiceChannel"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub;->removeService(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v1

    .line 68
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3
    const-string v0, "com.qihoo360.mobilesafe.svcmanager.IServiceChannel"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/qihoo360/replugin/IBinderGetter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qihoo360/replugin/IBinderGetter;

    move-result-object v2

    .line 73
    .local v2, "_arg1":Lcom/qihoo360/replugin/IBinderGetter;
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub;->addServiceDelayed(Ljava/lang/String;Lcom/qihoo360/replugin/IBinderGetter;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v1

    .line 57
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/qihoo360/replugin/IBinderGetter;
    :pswitch_4
    const-string v0, "com.qihoo360.mobilesafe.svcmanager.IServiceChannel"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 62
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v1

    .line 47
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_5
    const-string v0, "com.qihoo360.mobilesafe.svcmanager.IServiceChannel"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qihoo360/mobilesafe/svcmanager/IServiceChannel$Stub;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 51
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 53
    return v1

    .line 42
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/IBinder;
    :cond_0
    const-string v0, "com.qihoo360.mobilesafe.svcmanager.IServiceChannel"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
