.class public Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;
.super Ljava/lang/Object;
.source "FileDownloadTaskAtom.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I

.field private path:Ljava/lang/String;

.field private totalBytes:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom$1;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom$1;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->url:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->path:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->totalBytes:J

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "totalBytes"    # J

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->setUrl(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->setPath(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p3, p4}, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->setTotalBytes(J)V

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 2

    .line 48
    iget v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->id:I

    if-eqz v0, :cond_0

    .line 49
    iget v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->id:I

    return v0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->id:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->totalBytes:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->path:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTotalBytes(J)V
    .locals 0
    .param p1, "totalBytes"    # J

    .line 76
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->totalBytes:J

    .line 77
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->url:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    return-void
.end method
