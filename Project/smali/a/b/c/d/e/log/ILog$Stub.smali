.class public abstract La/b/c/d/e/log/ILog$Stub;
.super Landroid/os/Binder;
.source "ILog.java"

# interfaces
.implements La/b/c/d/e/log/ILog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/c/d/e/log/ILog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/c/d/e/log/ILog$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "a.b.c.d.e.log.ILog"

.field static final TRANSACTION_upLog:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "a.b.c.d.e.log.ILog"

    invoke-virtual {p0, p0, v0}, La/b/c/d/e/log/ILog$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)La/b/c/d/e/log/ILog;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "a.b.c.d.e.log.ILog"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, La/b/c/d/e/log/ILog;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, La/b/c/d/e/log/ILog;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, La/b/c/d/e/log/ILog$Stub$Proxy;

    invoke-direct {v1, p0}, La/b/c/d/e/log/ILog$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    .line 40
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq v0, v2, :cond_0

    .line 65
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 44
    :cond_0
    const-string v2, "a.b.c.d.e.log.ILog"

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v1

    .line 49
    :cond_1
    move-object/from16 v3, p3

    const-string v2, "a.b.c.d.e.log.ILog"

    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 57
    .local v12, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 59
    .local v13, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 60
    .local v14, "_arg4":Ljava/lang/String;
    move-object v5, p0

    move v6, v2

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    invoke-virtual/range {v5 .. v10}, La/b/c/d/e/log/ILog$Stub;->upLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v1
.end method
