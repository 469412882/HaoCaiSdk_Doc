.class public Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;
.super Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;
.source "SmallMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorMessageSnapshot"
.end annotation


# instance fields
.field private final sofarBytes:I

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(IILjava/lang/Throwable;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "sofarBytes"    # I
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 260
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;-><init>(I)V

    .line 261
    iput p2, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;->sofarBytes:I

    .line 262
    iput-object p3, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;->throwable:Ljava/lang/Throwable;

    .line 263
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 293
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;->sofarBytes:I

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;->throwable:Ljava/lang/Throwable;

    .line 296
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public getSmallSofarBytes()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;->sofarBytes:I

    return v0
.end method

.method public getStatus()B
    .locals 1

    .line 272
    const/4 v0, -0x1

    return v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 287
    invoke-super {p0, p1, p2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    .line 288
    iget v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;->sofarBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 290
    return-void
.end method
