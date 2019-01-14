.class final Lcom/qihoo360/loader2/BinderCursor$BinderParcelable$1;
.super Ljava/lang/Object;
.source "BinderCursor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 48
    new-instance v0, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;

    invoke-direct {v0, p1}, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;
    .locals 1
    .param p1, "size"    # I

    .line 53
    new-array v0, p1, [Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable$1;->newArray(I)[Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;

    move-result-object p1

    return-object p1
.end method
