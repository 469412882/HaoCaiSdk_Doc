.class public Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;
.super Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;
.source "SmallMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressMessageSnapshot"
.end annotation


# instance fields
.field private final sofarBytes:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "sofarBytes"    # I

    .line 164
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;-><init>(I)V

    .line 165
    iput p2, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;->sofarBytes:I

    .line 166
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 190
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;->sofarBytes:I

    .line 192
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getSmallSofarBytes()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;->sofarBytes:I

    return v0
.end method

.method public getStatus()B
    .locals 1

    .line 170
    const/4 v0, 0x3

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 185
    invoke-super {p0, p1, p2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    iget v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;->sofarBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    return-void
.end method
