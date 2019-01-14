.class public Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile;
.super Ljava/lang/Object;
.source "FileDownloadRandomAccessFile.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile$Creator;
    }
.end annotation


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final out:Ljava/io/BufferedOutputStream;

.field private final randomAccess:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile;->randomAccess:Ljava/io/RandomAccessFile;

    .line 39
    iget-object v0, p0, Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile;->randomAccess:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile;->fd:Ljava/io/FileDescriptor;

    .line 40
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile;->randomAccess:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile;->out:Ljava/io/BufferedOutputStream;

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 57
    return-void
.end method

.method public flushAndSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 51
    iget-object v0, p0, Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 52
    return-void
.end method

.method public seek(J)V
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile;->randomAccess:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 62
    return-void
.end method

.method public setLength(J)V
    .locals 1
    .param p1, "totalBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile;->randomAccess:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 67
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/liulishuo/filedownloader/stream/FileDownloadRandomAccessFile;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 46
    return-void
.end method
