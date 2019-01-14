.class public Lcom/liulishuo/filedownloader/model/FileDownloadModel;
.super Ljava/lang/Object;
.source "FileDownloadModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONNECTION_COUNT:Ljava/lang/String; = "connectionCount"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CALLBACK_PROGRESS_TIMES:I = 0x64

.field public static final ERR_MSG:Ljava/lang/String; = "errMsg"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final FILENAME:Ljava/lang/String; = "filename"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final PATH_AS_DIRECTORY:Ljava/lang/String; = "pathAsDirectory"

.field public static final SOFAR:Ljava/lang/String; = "sofar"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TOTAL:Ljava/lang/String; = "total"

.field public static final TOTAL_VALUE_IN_CHUNKED_RESOURCE:I = -0x1

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private connectionCount:I

.field private eTag:Ljava/lang/String;

.field private errMsg:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private id:I

.field private isLargeFile:Z

.field private path:Ljava/lang/String;

.field private pathAsDirectory:Z

.field private final soFar:Ljava/util/concurrent/atomic/AtomicLong;

.field private status:B

.field private total:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 309
    new-instance v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel$1;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel$1;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->soFar:Ljava/util/concurrent/atomic/AtomicLong;

    .line 292
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->id:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->url:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->path:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->pathAsDirectory:Z

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->filename:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->status:B

    .line 301
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->soFar:Ljava/util/concurrent/atomic/AtomicLong;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->total:J

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->errMsg:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->eTag:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->connectionCount:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isLargeFile:Z

    .line 307
    return-void
.end method


# virtual methods
.method public deleteTargetFile()V
    .locals 3

    .line 251
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "targetFilePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 253
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 259
    .end local v1    # "targetFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public deleteTaskFiles()V
    .locals 0

    .line 234
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->deleteTempFile()V

    .line 235
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->deleteTargetFile()V

    .line 236
    return-void
.end method

.method public deleteTempFile()V
    .locals 3

    .line 239
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "tempFilePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 242
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 248
    .end local v1    # "tempFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionCount()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->connectionCount:I

    return v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->id:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSoFar()J
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->soFar:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus()B
    .locals 1

    .line 149
    iget-byte v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->status:B

    return v0
.end method

.method public getTargetFilePath()Ljava/lang/String;
    .locals 3

    .line 138
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isPathAsDirectory()Z

    move-result v1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getTargetFilePath(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempFilePath()Ljava/lang/String;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getTempPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotal()J
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->total:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public increaseSoFar(J)V
    .locals 1
    .param p1, "increaseBytes"    # J

    .line 100
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->soFar:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 101
    return-void
.end method

.method public isChunked()Z
    .locals 5

    .line 161
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->total:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLargeFile()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isLargeFile:Z

    return v0
.end method

.method public isPathAsDirectory()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->pathAsDirectory:Z

    return v0
.end method

.method public resetConnectionCount()V
    .locals 1

    .line 204
    const/4 v0, 0x1

    iput v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->connectionCount:I

    .line 205
    return-void
.end method

.method public setConnectionCount(I)V
    .locals 0
    .param p1, "connectionCount"    # I

    .line 193
    iput p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->connectionCount:I

    .line 194
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "eTag"    # Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->eTag:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errMsg"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->errMsg:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->filename:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 79
    iput p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->id:I

    .line 80
    return-void
.end method

.method public setPath(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pathAsDirectory"    # Z

    .line 87
    iput-object p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->path:Ljava/lang/String;

    .line 88
    iput-boolean p2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->pathAsDirectory:Z

    .line 89
    return-void
.end method

.method public setSoFar(J)V
    .locals 1
    .param p1, "soFar"    # J

    .line 96
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->soFar:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 97
    return-void
.end method

.method public setStatus(B)V
    .locals 0
    .param p1, "status"    # B

    .line 92
    iput-byte p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->status:B

    .line 93
    return-void
.end method

.method public setTotal(J)V
    .locals 3
    .param p1, "total"    # J

    .line 104
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isLargeFile:Z

    .line 105
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->total:J

    .line 106
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->url:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .line 208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v1, "url"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "path"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "status"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 213
    const-string v1, "sofar"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 214
    const-string v1, "total"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 215
    const-string v1, "errMsg"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "etag"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "connectionCount"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getConnectionCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string v1, "pathAsDirectory"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isPathAsDirectory()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 219
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isPathAsDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    const-string v1, "filename"

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 263
    const-string v0, "id[%d], url[%s], path[%s], status[%d], sofar[%s], total[%d], etag[%s], %s"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->id:I

    .line 264
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->url:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->path:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-byte v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->status:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->soFar:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->total:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->eTag:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 265
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 263
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 276
    iget v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->pathAsDirectory:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 280
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-byte v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->status:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 282
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->soFar:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 283
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 284
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->errMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->eTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->connectionCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isLargeFile:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 288
    return-void
.end method
