.class public abstract Lcom/qihoo360/loader2/IPluginHost$Stub;
.super Landroid/os/Binder;
.source "IPluginHost.java"

# interfaces
.implements Lcom/qihoo360/loader2/IPluginHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/IPluginHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/IPluginHost$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qihoo360.loader2.IPluginHost"

.field static final TRANSACTION_attachPluginProcess:I = 0x5

.field static final TRANSACTION_dump:I = 0x21

.field static final TRANSACTION_fetchBinder:I = 0x2

.field static final TRANSACTION_fetchManagerServer:I = 0x1d

.field static final TRANSACTION_fetchPersistentCookie:I = 0x3

.field static final TRANSACTION_fetchServiceServer:I = 0x1c

.field static final TRANSACTION_getPidByProcessName:I = 0x1f

.field static final TRANSACTION_getProcessNameByPid:I = 0x20

.field static final TRANSACTION_getTaskAffinityGroupIndex:I = 0x1e

.field static final TRANSACTION_installBinder:I = 0x1

.field static final TRANSACTION_isProcessAlive:I = 0x19

.field static final TRANSACTION_listPlugins:I = 0x6

.field static final TRANSACTION_onReceive:I = 0xf

.field static final TRANSACTION_pluginDownloaded:I = 0x12

.field static final TRANSACTION_pluginExtracted:I = 0x14

.field static final TRANSACTION_pluginUninstalled:I = 0x13

.field static final TRANSACTION_queryPluginBinder:I = 0x1a

.field static final TRANSACTION_queryPluginsReceiverList:I = 0x1b

.field static final TRANSACTION_regActivity:I = 0x7

.field static final TRANSACTION_regPluginBinder:I = 0xb

.field static final TRANSACTION_regReceiver:I = 0xd

.field static final TRANSACTION_regService:I = 0x9

.field static final TRANSACTION_sendIntent2Plugin:I = 0x16

.field static final TRANSACTION_sendIntent2PluginSync:I = 0x18

.field static final TRANSACTION_sendIntent2Process:I = 0x15

.field static final TRANSACTION_sendIntent2ProcessSync:I = 0x17

.field static final TRANSACTION_startPluginProcess:I = 0x4

.field static final TRANSACTION_sumBinders:I = 0x10

.field static final TRANSACTION_unregActivity:I = 0x8

.field static final TRANSACTION_unregPluginBinder:I = 0xc

.field static final TRANSACTION_unregReceiver:I = 0xe

.field static final TRANSACTION_unregService:I = 0xa

.field static final TRANSACTION_updatePluginInfo:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p0, p0, v0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qihoo360/loader2/IPluginHost;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qihoo360/loader2/IPluginHost;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/qihoo360/loader2/IPluginHost;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/qihoo360/loader2/IPluginHost$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qihoo360/loader2/IPluginHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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

    if-eq p1, v0, :cond_10

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 471
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 464
    :pswitch_0
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->dump()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    return v1

    .line 454
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 457
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    return v1

    .line 444
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->getPidByProcessName(Ljava/lang/String;)I

    move-result v2

    .line 448
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    return v1

    .line 434
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_3
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 437
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->getTaskAffinityGroupIndex(Ljava/lang/String;)I

    move-result v2

    .line 438
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    return v1

    .line 426
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_4
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->fetchManagerServer()Lcom/qihoo360/replugin/packages/IPluginManagerServer;

    move-result-object v0

    .line 428
    .local v0, "_result":Lcom/qihoo360/replugin/packages/IPluginManagerServer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qihoo360/replugin/packages/IPluginManagerServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    nop

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 430
    return v1

    .line 418
    .end local v0    # "_result":Lcom/qihoo360/replugin/packages/IPluginManagerServer;
    :pswitch_5
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->fetchServiceServer()Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;

    move-result-object v0

    .line 420
    .local v0, "_result":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    nop

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 422
    return v1

    .line 403
    .end local v0    # "_result":Lcom/qihoo360/replugin/component/service/server/IPluginServiceServer;
    :pswitch_6
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Intent;

    .line 406
    .local v2, "_arg0":Landroid/content/Intent;
    goto :goto_0

    .line 409
    .end local v2    # "_arg0":Landroid/content/Intent;
    :cond_2
    nop

    .line 409
    .restart local v2    # "_arg0":Landroid/content/Intent;
    :goto_0
    move-object v0, v2

    .line 411
    .end local v2    # "_arg0":Landroid/content/Intent;
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->queryPluginsReceiverList(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 412
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 414
    return v1

    .line 391
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_result":Ljava/util/List;
    :pswitch_7
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/loader2/IPluginHost$Stub;->queryPluginBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 397
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 399
    return v1

    .line 381
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_8
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 384
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->isProcessAlive(Ljava/lang/String;)Z

    move-result v2

    .line 385
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    return v1

    .line 365
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_9
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 370
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 370
    .local v2, "_arg1":Landroid/content/Intent;
    goto :goto_1

    .line 373
    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_3
    nop

    .line 375
    .restart local v2    # "_arg1":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/loader2/IPluginHost$Stub;->sendIntent2PluginSync(Ljava/lang/String;Landroid/content/Intent;)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    return v1

    .line 349
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :pswitch_a
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 354
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 354
    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_2

    .line 357
    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_4
    nop

    .line 359
    .restart local v2    # "_arg1":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/loader2/IPluginHost$Stub;->sendIntent2ProcessSync(Ljava/lang/String;Landroid/content/Intent;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    return v1

    .line 334
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :pswitch_b
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 338
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 339
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 339
    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_3

    .line 342
    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_5
    nop

    .line 344
    .restart local v2    # "_arg1":Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/loader2/IPluginHost$Stub;->sendIntent2Plugin(Ljava/lang/String;Landroid/content/Intent;)V

    .line 345
    return v1

    .line 319
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :pswitch_c
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 324
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 324
    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_4

    .line 327
    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_6
    nop

    .line 329
    .restart local v2    # "_arg1":Landroid/content/Intent;
    :goto_4
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/loader2/IPluginHost$Stub;->sendIntent2Process(Ljava/lang/String;Landroid/content/Intent;)V

    .line 330
    return v1

    .line 309
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :pswitch_d
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 312
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->pluginExtracted(Ljava/lang/String;)Z

    move-result v2

    .line 313
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    return v1

    .line 294
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_e
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 297
    sget-object v0, Lcom/qihoo360/replugin/model/PluginInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 297
    .local v2, "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    goto :goto_5

    .line 300
    .end local v2    # "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_7
    nop

    .line 300
    .restart local v2    # "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    :goto_5
    move-object v0, v2

    .line 302
    .end local v2    # "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    .local v0, "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {p0, v0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->pluginUninstalled(Lcom/qihoo360/replugin/model/PluginInfo;)Z

    move-result v2

    .line 303
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    return v1

    .line 278
    .end local v0    # "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    .end local v2    # "_result":Z
    :pswitch_f
    const-string v2, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/qihoo360/loader2/IPluginHost$Stub;->pluginDownloaded(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v3

    .line 282
    .local v3, "_result":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v3, :cond_8

    .line 284
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    invoke-virtual {v3, p3, v1}, Lcom/qihoo360/replugin/model/PluginInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 288
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    :goto_6
    return v1

    .line 264
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/qihoo360/replugin/model/PluginInfo;
    :pswitch_10
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 267
    sget-object v0, Lcom/qihoo360/replugin/model/PluginInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 267
    .local v2, "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    goto :goto_7

    .line 270
    .end local v2    # "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_9
    nop

    .line 270
    .restart local v2    # "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    :goto_7
    move-object v0, v2

    .line 272
    .end local v2    # "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    .restart local v0    # "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {p0, v0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->updatePluginInfo(Lcom/qihoo360/replugin/model/PluginInfo;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    return v1

    .line 254
    .end local v0    # "_arg0":Lcom/qihoo360/replugin/model/PluginInfo;
    :pswitch_11
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->sumBinders(I)I

    move-result v2

    .line 258
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    return v1

    .line 236
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_12
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 243
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 243
    .local v2, "_arg2":Landroid/content/Intent;
    goto :goto_8

    .line 246
    .end local v2    # "_arg2":Landroid/content/Intent;
    :cond_a
    nop

    .line 248
    .restart local v2    # "_arg2":Landroid/content/Intent;
    :goto_8
    invoke-virtual {p0, v0, v3, v2}, Lcom/qihoo360/loader2/IPluginHost$Stub;->onReceive(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    return v1

    .line 229
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/Intent;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_13
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->unregReceiver()V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    return v1

    .line 217
    :pswitch_14
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 222
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 223
    .local v3, "_arg1":Ljava/util/Map;
    invoke-virtual {p0, v0, v3}, Lcom/qihoo360/loader2/IPluginHost$Stub;->regReceiver(Ljava/lang/String;Ljava/util/Map;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    return v1

    .line 201
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg1":Ljava/util/Map;
    :pswitch_15
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 204
    sget-object v0, Lcom/qihoo360/loader2/PluginBinderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/qihoo360/loader2/PluginBinderInfo;

    .line 204
    .local v2, "_arg0":Lcom/qihoo360/loader2/PluginBinderInfo;
    goto :goto_9

    .line 207
    .end local v2    # "_arg0":Lcom/qihoo360/loader2/PluginBinderInfo;
    :cond_b
    nop

    .line 207
    .restart local v2    # "_arg0":Lcom/qihoo360/loader2/PluginBinderInfo;
    :goto_9
    move-object v0, v2

    .line 210
    .end local v2    # "_arg0":Lcom/qihoo360/loader2/PluginBinderInfo;
    .local v0, "_arg0":Lcom/qihoo360/loader2/PluginBinderInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 211
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/loader2/IPluginHost$Stub;->unregPluginBinder(Lcom/qihoo360/loader2/PluginBinderInfo;Landroid/os/IBinder;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    return v1

    .line 185
    .end local v0    # "_arg0":Lcom/qihoo360/loader2/PluginBinderInfo;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_16
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 188
    sget-object v0, Lcom/qihoo360/loader2/PluginBinderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/qihoo360/loader2/PluginBinderInfo;

    .line 188
    .local v2, "_arg0":Lcom/qihoo360/loader2/PluginBinderInfo;
    goto :goto_a

    .line 191
    .end local v2    # "_arg0":Lcom/qihoo360/loader2/PluginBinderInfo;
    :cond_c
    nop

    .line 191
    .restart local v2    # "_arg0":Lcom/qihoo360/loader2/PluginBinderInfo;
    :goto_a
    move-object v0, v2

    .line 194
    .end local v2    # "_arg0":Lcom/qihoo360/loader2/PluginBinderInfo;
    .restart local v0    # "_arg0":Lcom/qihoo360/loader2/PluginBinderInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 195
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/loader2/IPluginHost$Stub;->regPluginBinder(Lcom/qihoo360/loader2/PluginBinderInfo;Landroid/os/IBinder;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    return v1

    .line 172
    .end local v0    # "_arg0":Lcom/qihoo360/loader2/PluginBinderInfo;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_17
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/qihoo360/loader2/IPluginHost$Stub;->unregService(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    return v1

    .line 159
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_18
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 166
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/qihoo360/loader2/IPluginHost$Stub;->regService(ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    return v1

    .line 144
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_19
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 152
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/qihoo360/loader2/IPluginHost$Stub;->unregActivity(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    return v1

    .line 129
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_1a
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 137
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 138
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/qihoo360/loader2/IPluginHost$Stub;->regActivity(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    return v1

    .line 121
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_1b
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->listPlugins()Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 125
    return v1

    .line 105
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    :pswitch_1c
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 113
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/qihoo360/loader2/IPluginHost$Stub;->attachPluginProcess(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v1

    .line 79
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_1d
    const-string v3, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 85
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 86
    sget-object v5, Lcom/qihoo360/loader2/PluginBinderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qihoo360/loader2/PluginBinderInfo;

    .line 86
    .local v5, "_arg2":Lcom/qihoo360/loader2/PluginBinderInfo;
    goto :goto_b

    .line 89
    .end local v5    # "_arg2":Lcom/qihoo360/loader2/PluginBinderInfo;
    :cond_d
    move-object v5, v2

    .line 91
    .restart local v5    # "_arg2":Lcom/qihoo360/loader2/PluginBinderInfo;
    :goto_b
    invoke-virtual {p0, v3, v4, v5}, Lcom/qihoo360/loader2/IPluginHost$Stub;->startPluginProcess(Ljava/lang/String;ILcom/qihoo360/loader2/PluginBinderInfo;)Lcom/qihoo360/loader2/IPluginClient;

    move-result-object v6

    .line 92
    .local v6, "_result":Lcom/qihoo360/loader2/IPluginClient;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v6, :cond_e

    invoke-interface {v6}, Lcom/qihoo360/loader2/IPluginClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    nop

    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 94
    if-eqz v5, :cond_f

    .line 95
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v5, p3, v1}, Lcom/qihoo360/loader2/PluginBinderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 99
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    :goto_c
    return v1

    .line 71
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Lcom/qihoo360/loader2/PluginBinderInfo;
    .end local v6    # "_result":Lcom/qihoo360/loader2/IPluginClient;
    :pswitch_1e
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->fetchPersistentCookie()J

    move-result-wide v2

    .line 73
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    return v1

    .line 61
    .end local v2    # "_result":J
    :pswitch_1f
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qihoo360/loader2/IPluginHost$Stub;->fetchBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 65
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 67
    return v1

    .line 50
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_20
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 55
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2}, Lcom/qihoo360/loader2/IPluginHost$Stub;->installBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v1

    .line 45
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :cond_10
    const-string v0, "com.qihoo360.loader2.IPluginHost"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
