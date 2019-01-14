.class public abstract La/b/c/d/e/B$Stub;
.super Landroid/os/Binder;
.source "B.java"

# interfaces
.implements La/b/c/d/e/B;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/c/d/e/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/c/d/e/B$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "a.b.c.d.e.B"

.field static final TRANSACTION_e:I = 0x2

.field static final TRANSACTION_finishActivity:I = 0x6

.field static final TRANSACTION_refreshView:I = 0x4

.field static final TRANSACTION_showText:I = 0x1

.field static final TRANSACTION_toMain:I = 0x3

.field static final TRANSACTION_toWeb:I = 0x5

.field static final TRANSACTION_toYourActivity:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "a.b.c.d.e.B"

    invoke-virtual {p0, p0, v0}, La/b/c/d/e/B$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)La/b/c/d/e/B;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "a.b.c.d.e.B"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, La/b/c/d/e/B;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, La/b/c/d/e/B;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, La/b/c/d/e/B$Stub$Proxy;

    invoke-direct {v1, p0}, La/b/c/d/e/B$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
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

    .line 38
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 99
    :pswitch_0
    const-string v0, "a.b.c.d.e.B"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, La/b/c/d/e/B$Stub;->toYourActivity()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v1

    .line 92
    :pswitch_1
    const-string v0, "a.b.c.d.e.B"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, La/b/c/d/e/B$Stub;->finishActivity()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v1

    .line 79
    :pswitch_2
    const-string v0, "a.b.c.d.e.B"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 86
    .local v3, "_arg2":Z
    :goto_0
    invoke-virtual {p0, v0, v2, v3}, La/b/c/d/e/B$Stub;->toWeb(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    return v1

    .line 72
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :pswitch_3
    const-string v0, "a.b.c.d.e.B"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, La/b/c/d/e/B$Stub;->refreshView()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v1

    .line 65
    :pswitch_4
    const-string v0, "a.b.c.d.e.B"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, La/b/c/d/e/B$Stub;->toMain()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v1

    .line 56
    :pswitch_5
    const-string v0, "a.b.c.d.e.B"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, La/b/c/d/e/B$Stub;->e(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v1

    .line 47
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6
    const-string v0, "a.b.c.d.e.B"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, La/b/c/d/e/B$Stub;->showText(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    return v1

    .line 42
    .end local v0    # "_arg0":Ljava/lang/String;
    :cond_1
    const-string v0, "a.b.c.d.e.B"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
