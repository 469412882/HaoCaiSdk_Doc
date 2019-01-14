.class public final Lokhttp3/internal/http2/Http2;
.super Ljava/lang/Object;
.source "Http2.java"


# static fields
.field static final BINARY:[Ljava/lang/String;

.field static final CONNECTION_PREFACE:Lokio/ByteString;

.field static final FLAGS:[Ljava/lang/String;

.field static final FLAG_ACK:B = 0x1t

.field static final FLAG_COMPRESSED:B = 0x20t

.field static final FLAG_END_HEADERS:B = 0x4t

.field static final FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final FLAG_END_STREAM:B = 0x1t

.field static final FLAG_NONE:B = 0x0t

.field static final FLAG_PADDED:B = 0x8t

.field static final FLAG_PRIORITY:B = 0x20t

.field private static final FRAME_NAMES:[Ljava/lang/String;

.field static final INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field static final TYPE_CONTINUATION:B = 0x9t

.field static final TYPE_DATA:B = 0x0t

.field static final TYPE_GOAWAY:B = 0x7t

.field static final TYPE_HEADERS:B = 0x1t

.field static final TYPE_PING:B = 0x6t

.field static final TYPE_PRIORITY:B = 0x2t

.field static final TYPE_PUSH_PROMISE:B = 0x5t

.field static final TYPE_RST_STREAM:B = 0x3t

.field static final TYPE_SETTINGS:B = 0x4t

.field static final TYPE_WINDOW_UPDATE:B = 0x8t


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 24
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 25
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DATA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HEADERS"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "PRIORITY"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "RST_STREAM"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "SETTINGS"

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-string v1, "PUSH_PROMISE"

    const/4 v6, 0x5

    aput-object v1, v0, v6

    const-string v1, "PING"

    const/4 v6, 0x6

    aput-object v1, v0, v6

    const-string v1, "GOAWAY"

    const/4 v6, 0x7

    aput-object v1, v0, v6

    const-string v1, "WINDOW_UPDATE"

    const/16 v6, 0x8

    aput-object v1, v0, v6

    const-string v1, "CONTINUATION"

    const/16 v7, 0x9

    aput-object v1, v0, v7

    sput-object v0, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    .line 68
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 69
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    .line 71
    .local v0, "i":I
    :goto_0
    sget-object v1, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    array-length v1, v1

    const/16 v7, 0x20

    if-ge v0, v1, :cond_0

    .line 72
    sget-object v1, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    const-string v8, "%8s"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v8, v9}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x30

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    .line 76
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const-string v1, "END_STREAM"

    aput-object v1, v0, v3

    .line 78
    new-array v0, v3, [I

    aput v3, v0, v2

    .line 80
    .local v0, "prefixFlags":[I
    sget-object v1, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const-string v3, "PADDED"

    aput-object v3, v1, v6

    .line 81
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget v8, v0, v3

    .line 82
    .local v8, "prefixFlag":I
    sget-object v9, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    or-int/lit8 v10, v8, 0x8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "|PADDED"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 81
    .end local v8    # "prefixFlag":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 85
    :cond_1
    sget-object v1, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const-string v3, "END_HEADERS"

    aput-object v3, v1, v5

    .line 86
    sget-object v1, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const-string v3, "PRIORITY"

    aput-object v3, v1, v7

    .line 87
    sget-object v1, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    const/16 v3, 0x24

    const-string v5, "END_HEADERS|PRIORITY"

    aput-object v5, v1, v3

    .line 88
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 92
    .local v1, "frameFlags":[I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    aget v5, v1, v4

    .line 93
    .local v5, "frameFlag":I
    array-length v7, v0

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_2

    aget v9, v0, v8

    .line 94
    .local v9, "prefixFlag":I
    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    or-int v11, v9, v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x7c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v14, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 95
    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    or-int v11, v9, v5

    or-int/2addr v11, v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v14, v14, v9

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v13, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "|PADDED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 93
    .end local v9    # "prefixFlag":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 92
    .end local v5    # "frameFlag":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 100
    :cond_3
    nop

    .line 100
    .local v2, "i":I
    :goto_4
    sget-object v3, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 101
    sget-object v3, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_4

    sget-object v3, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    sget-object v4, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 100
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 103
    .end local v0    # "prefixFlags":[I
    .end local v1    # "frameFlags":[I
    .end local v2    # "i":I
    :cond_5
    return-void

    :array_0
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # B
    .param p1, "flags"    # B

    .line 147
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 148
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 158
    :pswitch_0
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_1

    .line 151
    :pswitch_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "ACK"

    goto :goto_0

    :cond_1
    sget-object v0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    .line 156
    :pswitch_2
    sget-object v0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 158
    :cond_2
    sget-object v0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 160
    .local v0, "result":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 161
    const-string v1, "HEADERS"

    const-string v2, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 162
    :cond_3
    if-nez p0, :cond_4

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4

    .line 163
    const-string v1, "PRIORITY"

    const-string v2, "COMPRESSED"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 165
    :cond_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static frameLog(ZIIBB)Ljava/lang/String;
    .locals 7
    .param p0, "inbound"    # Z
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B

    .line 135
    sget-object v0, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p3, v0, :cond_0

    sget-object v0, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto :goto_0

    :cond_0
    const-string v0, "0x%02x"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "formattedType":Ljava/lang/String;
    :goto_0
    invoke-static {p3, p4}, Lokhttp3/internal/http2/Http2;->formatFlags(BB)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "formattedFlags":Ljava/lang/String;
    const-string v4, "%s 0x%08x %5d %-13s %s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v6, "<<"

    goto :goto_1

    :cond_1
    const-string v6, ">>"

    :goto_1
    aput-object v6, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    const/4 v1, 0x4

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
