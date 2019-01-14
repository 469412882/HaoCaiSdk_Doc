.class final Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder$1;
.super Ljava/lang/Object;
.source "ParcelBinder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 57
    new-instance v0, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;-><init>(Landroid/os/Parcel;Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;
    .locals 1
    .param p1, "size"    # I

    .line 62
    new-array v0, p1, [Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder$1;->newArray(I)[Lcom/qihoo360/mobilesafe/svcmanager/ParcelBinder;

    move-result-object p1

    return-object p1
.end method
