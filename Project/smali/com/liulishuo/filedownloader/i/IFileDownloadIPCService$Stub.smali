.class public abstract Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;
.super Landroid/os/Binder;
.source "IFileDownloadIPCService.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

.field static final TRANSACTION_checkDownloading:I = 0x3

.field static final TRANSACTION_clearAllTaskData:I = 0xf

.field static final TRANSACTION_clearTaskData:I = 0xe

.field static final TRANSACTION_getSofar:I = 0x8

.field static final TRANSACTION_getStatus:I = 0xa

.field static final TRANSACTION_getTotal:I = 0x9

.field static final TRANSACTION_isIdle:I = 0xb

.field static final TRANSACTION_pause:I = 0x5

.field static final TRANSACTION_pauseAllTasks:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setMaxNetworkThreadCount:I = 0x7

.field static final TRANSACTION_start:I = 0x4

.field static final TRANSACTION_startForeground:I = 0xc

.field static final TRANSACTION_stopForeground:I = 0xd

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {p0, p0, v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 38
    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v11, v0, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v11, :pswitch_data_0

    .line 209
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 203
    :pswitch_0
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->clearAllTaskData()V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    return v14

    .line 193
    :pswitch_1
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->clearTaskData(I)Z

    move-result v1

    .line 197
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    return v14

    .line 185
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    move v0, v1

    .line 188
    .local v0, "_arg0":Z
    invoke-virtual {v10, v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->stopForeground(Z)V

    .line 189
    return v14

    .line 170
    .end local v0    # "_arg0":Z
    :pswitch_3
    const-string v1, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    .line 175
    .local v0, "_arg1":Landroid/app/Notification;
    goto :goto_0

    .line 178
    .end local v0    # "_arg1":Landroid/app/Notification;
    :cond_1
    nop

    .line 180
    .restart local v0    # "_arg1":Landroid/app/Notification;
    :goto_0
    invoke-virtual {v10, v1, v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->startForeground(ILandroid/app/Notification;)V

    .line 181
    return v14

    .line 162
    .end local v0    # "_arg1":Landroid/app/Notification;
    .end local v1    # "_arg0":I
    :pswitch_4
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->isIdle()Z

    move-result v0

    .line 164
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return v14

    .line 152
    .end local v0    # "_result":Z
    :pswitch_5
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->getStatus(I)B

    move-result v1

    .line 156
    .local v1, "_result":B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 158
    return v14

    .line 142
    .end local v0    # "_arg0":I
    .end local v1    # "_result":B
    :pswitch_6
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->getTotal(I)J

    move-result-wide v1

    .line 146
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {v13, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    return v14

    .line 132
    .end local v0    # "_arg0":I
    .end local v1    # "_result":J
    :pswitch_7
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->getSofar(I)J

    move-result-wide v1

    .line 136
    .restart local v1    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {v13, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    return v14

    .line 122
    .end local v0    # "_arg0":I
    .end local v1    # "_result":J
    :pswitch_8
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->setMaxNetworkThreadCount(I)Z

    move-result v1

    .line 126
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return v14

    .line 115
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->pauseAllTasks()V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v14

    .line 105
    :pswitch_a
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->pause(I)Z

    move-result v1

    .line 109
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return v14

    .line 75
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_b
    const-string v2, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 79
    .local v15, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 81
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 83
    .local v3, "_arg2":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 85
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 87
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 89
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 91
    .local v7, "_arg6":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    sget-object v0, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 95
    .local v8, "_arg7":Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    :goto_3
    move-object v8, v0

    goto :goto_4

    .line 95
    .end local v8    # "_arg7":Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    :cond_4
    goto :goto_3

    .line 98
    .restart local v8    # "_arg7":Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v9, 0x1

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    .line 99
    .local v9, "_arg8":Z
    :goto_5
    move-object v0, v10

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    invoke-virtual/range {v0 .. v9}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->start(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    return v14

    .line 63
    .end local v3    # "_arg2":Z
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .end local v9    # "_arg8":Z
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    :pswitch_c
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->checkDownloading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 69
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return v14

    .line 55
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_d
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;
    invoke-virtual {v10, v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->unregisterCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;)V

    .line 59
    return v14

    .line 47
    .end local v0    # "_arg0":Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;
    :pswitch_e
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;

    move-result-object v0

    .line 50
    .restart local v0    # "_arg0":Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;
    invoke-virtual {v10, v0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCService$Stub;->registerCallback(Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;)V

    .line 51
    return v14

    .line 42
    .end local v0    # "_arg0":Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback;
    :cond_6
    const-string v0, "com.liulishuo.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
