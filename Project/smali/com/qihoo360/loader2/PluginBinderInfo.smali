.class public final Lcom/qihoo360/loader2/PluginBinderInfo;
.super Ljava/lang/Object;
.source "PluginBinderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTIVITY_REQUEST:I = 0x1

.field public static final BINDER_REQUEST:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qihoo360/loader2/PluginBinderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE_REQUEST:I = 0x0

.field public static final PROVIDER_REQUEST:I = 0x3

.field public static final SERVICE_REQUEST:I = 0x2


# instance fields
.field public index:I

.field public pid:I

.field public request:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/qihoo360/loader2/PluginBinderInfo$1;

    invoke-direct {v0}, Lcom/qihoo360/loader2/PluginBinderInfo$1;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/PluginBinderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/loader2/PluginBinderInfo;->request:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/qihoo360/loader2/PluginBinderInfo;->pid:I

    .line 62
    iput v0, p0, Lcom/qihoo360/loader2/PluginBinderInfo;->index:I

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "req"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/qihoo360/loader2/PluginBinderInfo;->request:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/qihoo360/loader2/PluginBinderInfo;->pid:I

    .line 69
    iput v0, p0, Lcom/qihoo360/loader2/PluginBinderInfo;->index:I

    .line 70
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lcom/qihoo360/loader2/PluginBinderInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 74
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method final readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qihoo360/loader2/PluginBinderInfo;->request:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qihoo360/loader2/PluginBinderInfo;->pid:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qihoo360/loader2/PluginBinderInfo;->index:I

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget v0, p0, Lcom/qihoo360/loader2/PluginBinderInfo;->request:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/qihoo360/loader2/PluginBinderInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/qihoo360/loader2/PluginBinderInfo;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return-void
.end method
