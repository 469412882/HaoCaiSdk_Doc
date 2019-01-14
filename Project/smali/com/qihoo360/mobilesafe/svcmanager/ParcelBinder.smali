.class Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;
.super Ljava/lang/Object;
.source "ParcelBinder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder$1;

    invoke-direct {v0}, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder$1;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;->mBinder:Landroid/os/IBinder;

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;->mBinder:Landroid/os/IBinder;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder$1;

    .line 27
    invoke-direct {p0, p1}, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getIbinder()Landroid/os/IBinder;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 50
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 51
    return-void
.end method
