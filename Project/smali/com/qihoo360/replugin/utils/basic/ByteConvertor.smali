.class public Lcom/qihoo360/replugin/utils/basic/ByteConvertor;
.super Ljava/lang/Object;
.source "ByteConvertor.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;B)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # B

    .line 41
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "0123456789ABCDEF"

    and-int/lit8 v1, p1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 112
    if-nez p0, :cond_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_0
    const-string v0, "0123456789abcdef"

    .line 116
    .local v0, "table":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 118
    .local v1, "ret":Ljava/lang/StringBuilder;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, p0, v3

    .line 120
    .local v4, "c":B
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    .line 121
    .local v5, "b":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    and-int/lit8 v5, v4, 0xf

    .line 123
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .end local v4    # "c":B
    .end local v5    # "b":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hexCharToInt(C)I
    .locals 3
    .param p0, "c"    # C

    .line 158
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 159
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 161
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 162
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 164
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 165
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 168
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 145
    if-nez p0, :cond_0

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 150
    .local v0, "sz":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 151
    .local v1, "ret":[B
    const/4 v2, 0x0

    .line 151
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 152
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/qihoo360/replugin/utils/basic/ByteConvertor;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/qihoo360/replugin/utils/basic/ByteConvertor;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 151
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 155
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static subBytes([BII)[B
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "from"    # I
    .param p2, "len"    # I

    .line 99
    new-array v0, p2, [B

    .line 100
    .local v0, "subBuf":[B
    const/4 v1, 0x0

    .line 100
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 101
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static toBytes(I)[B
    .locals 3
    .param p0, "intValue"    # I

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 78
    .local v0, "byteValue":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 79
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 80
    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 81
    const/high16 v1, -0x1000000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 82
    return-object v0
.end method

.method public static toBytes(J)[B
    .locals 6
    .param p0, "longValue"    # J

    .line 86
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 87
    .local v1, "byteValue":[B
    const-wide/16 v2, 0xff

    and-long v4, p0, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 88
    const-wide/32 v2, 0xff00

    and-long v4, p0, v2

    shr-long v2, v4, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    .line 89
    const-wide/32 v2, 0xff0000

    and-long v4, p0, v2

    const/16 v0, 0x10

    shr-long v2, v4, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, v1, v2

    .line 90
    const-wide v2, 0xff000000L

    and-long v4, p0, v2

    const/16 v0, 0x18

    shr-long v2, v4, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    .line 91
    const-wide v2, 0xff00000000L

    and-long v4, p0, v2

    const/16 v0, 0x20

    shr-long v2, v4, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    .line 92
    const-wide v2, 0xff0000000000L

    and-long v4, p0, v2

    const/16 v0, 0x28

    shr-long v2, v4, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x5

    aput-byte v0, v1, v2

    .line 93
    const-wide/high16 v2, 0xff000000000000L

    and-long v4, p0, v2

    const/16 v0, 0x30

    shr-long v2, v4, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    .line 94
    const-wide/high16 v2, -0x100000000000000L

    and-long v4, p0, v2

    const/16 v0, 0x38

    shr-long v2, v4, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    .line 95
    return-object v1
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # [B

    .line 26
    if-nez p0, :cond_0

    .line 27
    const-string v0, ""

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    .local v0, "result":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 31
    .local v3, "element":B
    invoke-static {v0, v3}, Lcom/qihoo360/replugin/utils/basic/ByteConvertor;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 30
    .end local v3    # "element":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toInt([B)I
    .locals 2
    .param p0, "byteArray4"    # [B

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "intValue":I
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 47
    shl-int/lit8 v0, v0, 0x8

    .line 48
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 49
    shl-int/lit8 v0, v0, 0x8

    .line 50
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 51
    shl-int/lit8 v0, v0, 0x8

    .line 52
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 53
    return v0
.end method

.method public static toLong([B)J
    .locals 7
    .param p0, "byteArray8"    # [B

    .line 57
    const-wide/16 v0, 0x0

    .line 58
    .local v0, "longValue":J
    const/4 v2, 0x7

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long v4, v0, v2

    .line 59
    .end local v0    # "longValue":J
    .local v4, "longValue":J
    const/16 v0, 0x8

    shl-long v1, v4, v0

    .line 60
    .end local v4    # "longValue":J
    .local v1, "longValue":J
    const/4 v3, 0x6

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long v5, v1, v3

    .line 61
    .end local v1    # "longValue":J
    .local v5, "longValue":J
    shl-long v1, v5, v0

    .line 62
    .end local v5    # "longValue":J
    .restart local v1    # "longValue":J
    const/4 v3, 0x5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long v5, v1, v3

    .line 63
    .end local v1    # "longValue":J
    .restart local v5    # "longValue":J
    shl-long v1, v5, v0

    .line 64
    .end local v5    # "longValue":J
    .restart local v1    # "longValue":J
    const/4 v3, 0x4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long v5, v1, v3

    .line 65
    .end local v1    # "longValue":J
    .restart local v5    # "longValue":J
    shl-long v1, v5, v0

    .line 66
    .end local v5    # "longValue":J
    .restart local v1    # "longValue":J
    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long v5, v1, v3

    .line 67
    .end local v1    # "longValue":J
    .restart local v5    # "longValue":J
    shl-long v1, v5, v0

    .line 68
    .end local v5    # "longValue":J
    .restart local v1    # "longValue":J
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long v5, v1, v3

    .line 69
    .end local v1    # "longValue":J
    .restart local v5    # "longValue":J
    shl-long v1, v5, v0

    .line 70
    .end local v5    # "longValue":J
    .restart local v1    # "longValue":J
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long v5, v1, v3

    .line 71
    .end local v1    # "longValue":J
    .restart local v5    # "longValue":J
    shl-long v0, v5, v0

    .line 72
    .end local v5    # "longValue":J
    .restart local v0    # "longValue":J
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long v4, v0, v2

    .line 73
    .end local v0    # "longValue":J
    .restart local v4    # "longValue":J
    return-wide v4
.end method
