.class public abstract Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;
.super Landroid/os/Binder;
.source "IPluginManagerServer.java"

# interfaces
.implements Lcom/qihoo360/replugin/packages/IPluginManagerServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/packages/IPluginManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qihoo360.replugin.packages.IPluginManagerServer"

.field static final TRANSACTION_addToRunningPlugins:I = 0x9

.field static final TRANSACTION_getRunningPlugins:I = 0x6

.field static final TRANSACTION_getRunningProcessesByPlugin:I = 0xa

.field static final TRANSACTION_install:I = 0x1

.field static final TRANSACTION_isPluginRunning:I = 0x7

.field static final TRANSACTION_load:I = 0x3

.field static final TRANSACTION_syncRunningPlugins:I = 0x8

.field static final TRANSACTION_uninstall:I = 0x2

.field static final TRANSACTION_updateAll:I = 0x4

.field static final TRANSACTION_updateUsed:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.qihoo360.replugin.packages.IPluginManagerServer"

    invoke-virtual {p0, p0, v0}, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qihoo360/replugin/packages/IPluginManagerServer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "com.qihoo360.replugin.packages.IPluginManagerServer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qihoo360/replugin/packages/IPluginManagerServer;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Lcom/qihoo360/replugin/packages/IPluginManagerServer;

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 165
    :pswitch_0
    const-string v0, "com.qihoo360.replugin.packages.IPluginManagerServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;->getRunningProcessesByPlugin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 171
    return v1

    .line 152
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_1
    const-string v0, "com.qihoo360.replugin.packages.IPluginManagerServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;->addToRunningPlugins(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    return v1

    .line 138
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_2
    const-string v2, "com.qihoo360.replugin.packages.IPluginManagerServer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    sget-object v0, Lcom/qihoo360/replugin/packages/PluginRunningList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/replugin/packages/PluginRunningList;

    .line 141
    .local v0, "_arg0":Lcom/qihoo360/replugin/packages/PluginRunningList;
    goto :goto_0

    .line 144
    .end local v0    # "_arg0":Lcom/qihoo360/replugin/packages/PluginRunningList;
    :cond_0
    nop

    .line 146
    .restart local v0    # "_arg0":Lcom/qihoo360/replugin/packages/PluginRunningList;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;->syncRunningPlugins(Lcom/qihoo360/replugin/packages/PluginRunningList;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    return v1

    .line 126
    .end local v0    # "_arg0":Lcom/qihoo360/replugin/packages/PluginRunningList;
    :pswitch_3
    const-string v0, "com.qihoo360.replugin.packages.IPluginManagerServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;->isPluginRunning(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 132
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return v1

    .line 112
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    const-string v0, "com.qihoo360.replugin.packages.IPluginManagerServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;->getRunningPlugins()Lcom/qihoo360/replugin/packages/PluginRunningList;

    move-result-object v0

    .line 114
    .local v0, "_result":Lcom/qihoo360/replugin/packages/PluginRunningList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {v0, p3, v1}, Lcom/qihoo360/replugin/packages/PluginRunningList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    :goto_1
    return v1

    .line 101
    .end local v0    # "_result":Lcom/qihoo360/replugin/packages/PluginRunningList;
    :pswitch_5
    const-string v0, "com.qihoo360.replugin.packages.IPluginManagerServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    nop

    .line 106
    .local v2, "_arg1":Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;->updateUsed(Ljava/lang/String;Z)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    return v1

    .line 93
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_6
    const-string v0, "com.qihoo360.replugin.packages.IPluginManagerServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;->updateAll()Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 97
    return v1

    .line 85
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    :pswitch_7
    const-string v0, "com.qihoo360.replugin.packages.IPluginManagerServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;->load()Ljava/util/List;

    move-result-object v0

    .line 87
    .restart local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 89
    return v1

    .line 70
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    :pswitch_8
    const-string v2, "com.qihoo360.replugin.packages.IPluginManagerServer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    sget-object v0, Lcom/qihoo360/replugin/model/PluginInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 73
    .local v0, "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    goto :goto_2

    .line 76
    .end local v0    # "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_3
    nop

    .line 78
    .restart local v0    # "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;->uninstall(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v2

    .line 79
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v1

    .line 54
    .end local v0    # "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    .end local v2    # "_result":Z
    :pswitch_9
    const-string v0, "com.qihoo360.replugin.packages.IPluginManagerServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/packages/IPluginManagerServer$Stub;->install(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v3

    .line 58
    .local v3, "_result":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v3, :cond_4

    .line 60
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v3, p3, v1}, Lcom/qihoo360/replugin/model/PluginInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 64
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    :goto_3
    return v1

    .line 49
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_5
    const-string v0, "com.qihoo360.replugin.packages.IPluginManagerServer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v1

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
