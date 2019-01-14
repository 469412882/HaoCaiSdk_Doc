.class public Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;
.super Ljava/lang/Object;
.source "BinderCursor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/BinderCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderParcelable"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable$1;

    invoke-direct {v0}, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable$1;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;->mBinder:Landroid/os/IBinder;

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;->mBinder:Landroid/os/IBinder;

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget-object v0, p0, Lcom/qihoo360/loader2/BinderCursor$BinderParcelable;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 77
    return-void
.end method
