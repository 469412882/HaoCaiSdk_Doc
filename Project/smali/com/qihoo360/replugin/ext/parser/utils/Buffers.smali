.class public Lcom/qihoo360/replugin/ext/parser/utils/Buffers;
.super Ljava/lang/Object;
.source "Buffers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBytes(Ljava/nio/ByteBuffer;I)[B
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I

    .line 66
    new-array v0, p1, [B

    .line 67
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 68
    return-object v0
.end method

.method public static readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "strLen"    # I

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 76
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 77
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readUByte(Ljava/nio/ByteBuffer;)S
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 43
    .local v0, "b":B
    and-int/lit16 v1, v0, 0xff

    int-to-short v1, v1

    return v1
.end method

.method public static readUInt(Ljava/nio/ByteBuffer;)J
    .locals 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 59
    .local v0, "i":I
    int-to-long v1, v0

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    return-wide v5
.end method

.method public static readUShort(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 51
    .local v0, "s":S
    const v1, 0xffff

    and-int/2addr v1, v0

    return v1
.end method

.method public static skip(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "count"    # I

    .line 86
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    return-void
.end method
