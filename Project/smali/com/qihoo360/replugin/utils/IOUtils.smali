.class public Lcom/qihoo360/replugin/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final EOF:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/utils/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 108
    .local v0, "count":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 109
    const/4 v2, -0x1

    return v2

    .line 111
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 5
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/utils/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    .line 222
    .local v0, "count":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 223
    const/4 v2, -0x1

    return v2

    .line 225
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-array v0, p2, [B

    invoke-static {p0, p1, v0}, Lcom/qihoo360/replugin/utils/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/Writer;
    .param p2, "inputEncoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p2}, Lcom/qihoo360/replugin/utils/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 197
    .local v0, "in":Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lcom/qihoo360/replugin/utils/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 198
    return-void
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const/16 v0, 0x1000

    invoke-static {p0, p1, v0}, Lcom/qihoo360/replugin/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const-wide/16 v0, 0x0

    .line 172
    .local v0, "count":J
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .line 172
    .local v4, "n":I
    if-eq v2, v3, :cond_0

    .line 173
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 174
    int-to-long v2, v4

    add-long v5, v0, v2

    .line 170
    .end local v0    # "count":J
    .local v5, "count":J
    move-wide v0, v5

    goto :goto_0

    .line 176
    .end local v5    # "count":J
    .restart local v0    # "count":J
    :cond_0
    return-wide v0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 2
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    const/16 v0, 0x1000

    new-array v0, v0, [C

    invoke-static {p0, p1, v0}, Lcom/qihoo360/replugin/utils/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J
    .locals 7
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .param p2, "buffer"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const-wide/16 v0, 0x0

    .line 263
    .local v0, "count":J
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    move-result v3

    move v4, v3

    .line 263
    .local v4, "n":I
    if-eq v2, v3, :cond_0

    .line 264
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v4}, Ljava/io/Writer;->write([CII)V

    .line 265
    int-to-long v2, v4

    add-long v5, v0, v2

    .line 261
    .end local v0    # "count":J
    .local v5, "count":J
    move-wide v0, v5

    goto :goto_0

    .line 267
    .end local v5    # "count":J
    .restart local v0    # "count":J
    :cond_0
    return-wide v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/qihoo360/replugin/utils/StringBuilderWriter;

    invoke-direct {v0}, Lcom/qihoo360/replugin/utils/StringBuilderWriter;-><init>()V

    .line 81
    .local v0, "sw":Lcom/qihoo360/replugin/utils/StringBuilderWriter;
    invoke-static {p0, v0, p1}, Lcom/qihoo360/replugin/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    .line 82
    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    if-eqz p0, :cond_0

    .line 287
    invoke-static {p2}, Lcom/qihoo360/replugin/utils/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 289
    :cond_0
    return-void
.end method
