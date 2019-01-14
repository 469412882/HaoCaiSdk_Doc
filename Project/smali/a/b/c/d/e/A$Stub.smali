.class public abstract La/b/c/d/e/A$Stub;
.super Landroid/os/Binder;
.source "A.java"

# interfaces
.implements La/b/c/d/e/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/c/d/e/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/c/d/e/A$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "a.b.c.d.e.A"

.field static final TRANSACTION_a:I = 0x2

.field static final TRANSACTION_b:I = 0x3

.field static final TRANSACTION_getPid:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "a.b.c.d.e.A"

    invoke-virtual {p0, p0, v0}, La/b/c/d/e/A$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)La/b/c/d/e/A;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "a.b.c.d.e.A"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, La/b/c/d/e/A;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, La/b/c/d/e/A;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, La/b/c/d/e/A$Stub$Proxy;

    invoke-direct {v1, p0}, La/b/c/d/e/A$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 64
    :pswitch_0
    const-string v0, "a.b.c.d.e.A"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, La/b/c/d/e/A$Stub;->b()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    return v1

    .line 55
    :pswitch_1
    const-string v0, "a.b.c.d.e.A"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, La/b/c/d/e/B$Stub;->asInterface(Landroid/os/IBinder;)La/b/c/d/e/B;

    move-result-object v0

    .line 58
    .local v0, "_arg0":La/b/c/d/e/B;
    invoke-virtual {p0, v0}, La/b/c/d/e/A$Stub;->a(La/b/c/d/e/B;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    return v1

    .line 47
    .end local v0    # "_arg0":La/b/c/d/e/B;
    :pswitch_2
    const-string v0, "a.b.c.d.e.A"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, La/b/c/d/e/A$Stub;->getPid()I

    move-result v0

    .line 49
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return v1

    .line 42
    .end local v0    # "_result":I
    :cond_0
    const-string v0, "a.b.c.d.e.A"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
