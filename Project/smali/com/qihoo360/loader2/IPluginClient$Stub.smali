.class public abstract Lcom/qihoo360/loader2/IPluginClient$Stub;
.super Landroid/os/Binder;
.source "IPluginClient.java"

# interfaces
.implements Lcom/qihoo360/loader2/IPluginClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/IPluginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/IPluginClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qihoo360.loader2.IPluginClient"

.field static final TRANSACTION_allocActivityContainer:I = 0x1

.field static final TRANSACTION_dumpActivities:I = 0xa

.field static final TRANSACTION_dumpServices:I = 0x9

.field static final TRANSACTION_fetchServiceServer:I = 0x7

.field static final TRANSACTION_onReceive:I = 0x8

.field static final TRANSACTION_queryBinder:I = 0x2

.field static final TRANSACTION_releaseBinder:I = 0x3

.field static final TRANSACTION_sendIntent:I = 0x4

.field static final TRANSACTION_sendIntentSync:I = 0x5

.field static final TRANSACTION_sumActivities:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.qihoo360.loader2.IPluginClient"

    invoke-virtual {p0, p0, v0}, Lcom/qihoo360/loader2/IPluginClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qihoo360/loader2/IPluginClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.qihoo360.loader2.IPluginClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qihoo360/loader2/IPluginClient;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/qihoo360/loader2/IPluginClient;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/qihoo360/loader2/IPluginClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qihoo360/loader2/IPluginClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
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

    .line 41
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 159
    :pswitch_0
    const-string v0, "com.qihoo360.loader2.IPluginClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/qihoo360/loader2/IPluginClient$Stub;->dumpActivities()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return v1

    .line 151
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1
    const-string v0, "com.qihoo360.loader2.IPluginClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/qihoo360/loader2/IPluginClient$Stub;->dumpServices()Ljava/lang/String;

    move-result-object v0

    .line 153
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v1

    .line 133
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2
    const-string v2, "com.qihoo360.loader2.IPluginClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 140
    .local v0, "_arg2":Landroid/content/Intent;
    goto :goto_0

    .line 143
    .end local v0    # "_arg2":Landroid/content/Intent;
    :cond_0
    nop

    .line 145
    .restart local v0    # "_arg2":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v2, v3, v0}, Lcom/qihoo360/loader2/IPluginClient$Stub;->onReceive(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    return v1

    .line 125
    .end local v0    # "_arg2":Landroid/content/Intent;
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3
    const-string v2, "com.qihoo360.loader2.IPluginClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/qihoo360/loader2/IPluginClient$Stub;->fetchServiceServer()Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    move-result-object v2

    .line 127
    .local v2, "_result":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 129
    return v1

    .line 117
    .end local v2    # "_result":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    :pswitch_4
    const-string v0, "com.qihoo360.loader2.IPluginClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/qihoo360/loader2/IPluginClient$Stub;->sumActivities()I

    move-result v0

    .line 119
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return v1

    .line 103
    .end local v0    # "_result":I
    :pswitch_5
    const-string v2, "com.qihoo360.loader2.IPluginClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 106
    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_1

    .line 109
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_2
    nop

    .line 111
    .restart local v0    # "_arg0":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/qihoo360/loader2/IPluginClient$Stub;->sendIntentSync(Landroid/content/Intent;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v1

    .line 90
    .end local v0    # "_arg0":Landroid/content/Intent;
    :pswitch_6
    const-string v2, "com.qihoo360.loader2.IPluginClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 93
    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_2

    .line 96
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_3
    nop

    .line 98
    .restart local v0    # "_arg0":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/qihoo360/loader2/IPluginClient$Stub;->sendIntent(Landroid/content/Intent;)V

    .line 99
    return v1

    .line 83
    .end local v0    # "_arg0":Landroid/content/Intent;
    :pswitch_7
    const-string v0, "com.qihoo360.loader2.IPluginClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/qihoo360/loader2/IPluginClient$Stub;->releaseBinder()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v1

    .line 71
    :pswitch_8
    const-string v0, "com.qihoo360.loader2.IPluginClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/loader2/IPluginClient$Stub;->queryBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 77
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 79
    return v1

    .line 50
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_9
    const-string v2, "com.qihoo360.loader2.IPluginClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 59
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 59
    .local v0, "_arg3":Landroid/content/Intent;
    goto :goto_3

    .line 62
    .end local v0    # "_arg3":Landroid/content/Intent;
    :cond_4
    nop

    .line 64
    .restart local v0    # "_arg3":Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/qihoo360/loader2/IPluginClient$Stub;->allocActivityContainer(Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return v1

    .line 45
    .end local v0    # "_arg3":Landroid/content/Intent;
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :cond_5
    const-string v0, "com.qihoo360.loader2.IPluginClient"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
