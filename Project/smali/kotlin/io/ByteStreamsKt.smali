.class public final Lkotlin/io/ByteStreamsKt;
.super Ljava/lang/Object;
.source "IOStreams.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIOStreams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IOStreams.kt\nkotlin/io/ByteStreamsKt\n*L\n1#1,121:1\n45#1:122\n67#1,5:123\n75#1,13:128\n91#1:141\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000Z\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0017\u0010\u0000\u001a\u00020\u0005*\u00020\u00062\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0017\u0010\u0007\u001a\u00020\u0008*\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0087\u0008\u001a\u0017\u0010\u000b\u001a\u00020\u000c*\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0087\u0008\u001a\u0017\u0010\r\u001a\u00020\u000e*\u00020\u000f2\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0087\u0008\u001a\u001c\u0010\u0010\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u001a\r\u0010\u0013\u001a\u00020\u000e*\u00020\u0014H\u0087\u0008\u001a\u001d\u0010\u0013\u001a\u00020\u000e*\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0087\u0008\u001a\r\u0010\u0017\u001a\u00020\u0018*\u00020\u0001H\u0086\u0002\u001a\u0014\u0010\u0019\u001a\u00020\u0014*\u00020\u00022\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0004\u001a\u0017\u0010\u001b\u001a\u00020\u001c*\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0087\u0008\u001a\u0017\u0010\u001d\u001a\u00020\u001e*\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0087\u0008\u00a8\u0006\u001f"
    }
    d2 = {
        "buffered",
        "Ljava/io/BufferedInputStream;",
        "Ljava/io/InputStream;",
        "bufferSize",
        "",
        "Ljava/io/BufferedOutputStream;",
        "Ljava/io/OutputStream;",
        "bufferedReader",
        "Ljava/io/BufferedReader;",
        "charset",
        "Ljava/nio/charset/Charset;",
        "bufferedWriter",
        "Ljava/io/BufferedWriter;",
        "byteInputStream",
        "Ljava/io/ByteArrayInputStream;",
        "",
        "copyTo",
        "",
        "out",
        "inputStream",
        "",
        "offset",
        "length",
        "iterator",
        "Lkotlin/collections/ByteIterator;",
        "readBytes",
        "estimatedSize",
        "reader",
        "Ljava/io/InputStreamReader;",
        "writer",
        "Ljava/io/OutputStreamWriter;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "ByteStreamsKt"
.end annotation


# direct methods
.method private static final buffered(Ljava/io/InputStream;I)Ljava/io/BufferedInputStream;
    .locals 2
    .param p0, "$receiver"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "bufferSize"    # I
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 67
    .local v0, "$i$f$buffered":I
    instance-of v1, p0, Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_0
    return-object v1
.end method

.method private static final buffered(Ljava/io/OutputStream;I)Ljava/io/BufferedOutputStream;
    .locals 2
    .param p0, "$receiver"    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "bufferSize"    # I
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 83
    .local v0, "$i$f$buffered":I
    instance-of v1, p0, Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/io/BufferedOutputStream;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_0
    return-object v1
.end method

.method static bridge synthetic buffered$default(Ljava/io/InputStream;IILjava/lang/Object;)Ljava/io/BufferedInputStream;
    .locals 0
    .param p0, "$receiver"    # Ljava/io/InputStream;
    .param p1, "bufferSize"    # I
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 66
    const/16 p1, 0x2000

    .line 123
    .local p2, "$i$f$buffered":I
    :cond_0
    instance-of p3, p0, Ljava/io/BufferedInputStream;

    if-eqz p3, :cond_1

    move-object p3, p0

    check-cast p3, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-direct {p3, p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_0
    return-object p3
.end method

.method static bridge synthetic buffered$default(Ljava/io/OutputStream;IILjava/lang/Object;)Ljava/io/BufferedOutputStream;
    .locals 0
    .param p0, "$receiver"    # Ljava/io/OutputStream;
    .param p1, "bufferSize"    # I
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 82
    const/16 p1, 0x2000

    .line 136
    .local p2, "$i$f$buffered":I
    :cond_0
    instance-of p3, p0, Ljava/io/BufferedOutputStream;

    if-eqz p3, :cond_1

    move-object p3, p0

    check-cast p3, Ljava/io/BufferedOutputStream;

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/io/BufferedOutputStream;

    invoke-direct {p3, p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_0
    return-object p3
.end method

.method private static final bufferedReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .locals 4
    .param p0, "$receiver"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 75
    .local v0, "$i$f$bufferedReader":I
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v1, Ljava/io/Reader;

    instance-of v2, v1, Ljava/io/BufferedReader;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v2

    :goto_0
    return-object v1
.end method

.method static bridge synthetic bufferedReader$default(Ljava/io/InputStream;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/BufferedReader;
    .locals 2
    .param p0, "$receiver"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 75
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 128
    .local p2, "$i$f$bufferedReader":I
    :cond_0
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast p3, Ljava/io/Reader;

    const/16 v0, 0x2000

    instance-of v1, p3, Ljava/io/BufferedReader;

    if-eqz v1, :cond_1

    check-cast p3, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p3, v1

    :goto_0
    return-object p3
.end method

.method private static final bufferedWriter(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/io/BufferedWriter;
    .locals 4
    .param p0, "$receiver"    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 91
    .local v0, "$i$f$bufferedWriter":I
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v1, Ljava/io/Writer;

    instance-of v2, v1, Ljava/io/BufferedWriter;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/io/BufferedWriter;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/BufferedWriter;

    const/16 v3, 0x2000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v1, v2

    :goto_0
    return-object v1
.end method

.method static bridge synthetic bufferedWriter$default(Ljava/io/OutputStream;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/BufferedWriter;
    .locals 2
    .param p0, "$receiver"    # Ljava/io/OutputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 91
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 141
    .local p2, "$i$f$bufferedWriter":I
    :cond_0
    new-instance p3, Ljava/io/OutputStreamWriter;

    invoke-direct {p3, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast p3, Ljava/io/Writer;

    const/16 v0, 0x2000

    instance-of v1, p3, Ljava/io/BufferedWriter;

    if-eqz v1, :cond_1

    check-cast p3, Ljava/io/BufferedWriter;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object p3, v1

    :goto_0
    return-object p3
.end method

.method private static final byteInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/ByteArrayInputStream;
    .locals 3
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 45
    .local v0, "$i$f$byteInputStream":I
    if-nez p0, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v2
.end method

.method static bridge synthetic byteInputStream$default(Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/ByteArrayInputStream;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 45
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 122
    .local p2, "$i$f$byteInputStream":I
    :cond_0
    if-nez p0, :cond_1

    new-instance p3, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p3, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static final copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 8
    .param p0, "$receiver"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "out"    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "bufferSize"    # I

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    const-wide/16 v0, 0x0

    .line 100
    .local v0, "bytesCopied":J
    new-array v2, p2, [B

    .line 101
    .local v2, "buffer":[B
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 102
    .local v3, "bytes":I
    :goto_0
    if-ltz v3, :cond_0

    .line 103
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 104
    int-to-long v4, v3

    add-long v6, v0, v4

    .line 105
    .end local v0    # "bytesCopied":J
    .local v6, "bytesCopied":J
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 102
    nop

    .line 101
    move-wide v0, v6

    goto :goto_0

    .line 107
    .end local v6    # "bytesCopied":J
    .restart local v0    # "bytesCopied":J
    :cond_0
    return-wide v0
.end method

.method public static bridge synthetic copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 98
    const/16 p2, 0x2000

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/io/ByteStreamsKt;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final inputStream([B)Ljava/io/ByteArrayInputStream;
    .locals 2
    .param p0, "$receiver"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 51
    .local v0, "$i$f$inputStream":I
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method private static final inputStream([BII)Ljava/io/ByteArrayInputStream;
    .locals 2
    .param p0, "$receiver"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 59
    .local v0, "$i$f$inputStream":I
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v1
.end method

.method public static final iterator(Ljava/io/BufferedInputStream;)Lkotlin/collections/ByteIterator;
    .locals 1
    .param p0, "$receiver"    # Ljava/io/BufferedInputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lkotlin/io/ByteStreamsKt$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/io/ByteStreamsKt$iterator$1;-><init>(Ljava/io/BufferedInputStream;)V

    check-cast v0, Lkotlin/collections/ByteIterator;

    .line 40
    return-object v0
.end method

.method public static final readBytes(Ljava/io/InputStream;I)[B
    .locals 5
    .param p0, "$receiver"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "estimatedSize"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 117
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    move-object v1, v0

    check-cast v1, Ljava/io/OutputStream;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 118
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "buffer.toByteArray()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static bridge synthetic readBytes$default(Ljava/io/InputStream;IILjava/lang/Object;)[B
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 115
    const/16 p1, 0x2000

    :cond_0
    invoke-static {p0, p1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static final reader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/InputStreamReader;
    .locals 2
    .param p0, "$receiver"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 71
    .local v0, "$i$f$reader":I
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method static bridge synthetic reader$default(Ljava/io/InputStream;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/InputStreamReader;
    .locals 0
    .param p0, "$receiver"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 71
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 127
    .local p2, "$i$f$reader":I
    :cond_0
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object p3
.end method

.method private static final writer(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/io/OutputStreamWriter;
    .locals 2
    .param p0, "$receiver"    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 87
    .local v0, "$i$f$writer":I
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method static bridge synthetic writer$default(Ljava/io/OutputStream;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/io/OutputStreamWriter;
    .locals 0
    .param p0, "$receiver"    # Ljava/io/OutputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 87
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 140
    .local p2, "$i$f$writer":I
    :cond_0
    new-instance p3, Ljava/io/OutputStreamWriter;

    invoke-direct {p3, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object p3
.end method
