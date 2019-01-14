.class public Lcom/qihoo360/replugin/ext/parser/utils/ParseUtils;
.super Ljava/lang/Object;
.source "ParseUtils.java"


# static fields
.field public static charsetUTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/replugin/ext/parser/utils/ParseUtils;->charsetUTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkChunkType(II)V
    .locals 3
    .param p0, "expected"    # I
    .param p1, "real"    # I

    .line 169
    if-eq p0, p1, :cond_0

    .line 170
    new-instance v0, Lcom/qihoo360/replugin/ext/parser/exception/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expect chunk type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but got:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qihoo360/replugin/ext/parser/exception/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    return-void
.end method

.method private static readLen(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "len":I
    invoke-static {p0}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUByte(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 76
    .local v1, "i":I
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 78
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    .line 79
    invoke-static {p0}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUByte(Ljava/nio/ByteBuffer;)S

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 81
    :cond_0
    move v0, v1

    .line 83
    :goto_0
    return v0
.end method

.method private static readLen16(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "len":I
    invoke-static {p0}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUShort(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 93
    .local v1, "i":I
    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    .line 94
    and-int/lit16 v2, v1, 0x7fff

    shl-int/lit8 v2, v2, 0xf

    or-int/2addr v0, v2

    .line 95
    invoke-static {p0}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUShort(Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 97
    :cond_0
    move v0, v1

    .line 99
    :goto_0
    return v0
.end method

.method public static readResValue(Ljava/nio/ByteBuffer;Lcom/qihoo360/replugin/ext/parser/struct/StringPool;)Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue;
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "stringPool"    # Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    .line 162
    invoke-static {p0}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUShort(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 163
    .local v0, "size":I
    invoke-static {p0}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUByte(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 164
    .local v1, "res0":S
    invoke-static {p0}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUByte(Ljava/nio/ByteBuffer;)S

    move-result v2

    .line 165
    .local v2, "dataType":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3, v2}, Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue;->raw(IS)Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue;

    move-result-object v3

    return-object v3
.end method

.method public static readString(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "utf8"    # Z

    .line 49
    if-eqz p1, :cond_0

    .line 52
    invoke-static {p0}, Lcom/qihoo360/replugin/ext/parser/utils/ParseUtils;->readLen(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 53
    .local v0, "strLen":I
    invoke-static {p0}, Lcom/qihoo360/replugin/ext/parser/utils/ParseUtils;->readLen(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 54
    .local v1, "bytesLen":I
    invoke-static {p0, v1}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readBytes(Ljava/nio/ByteBuffer;I)[B

    move-result-object v2

    .line 55
    .local v2, "bytes":[B
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/qihoo360/replugin/ext/parser/utils/ParseUtils;->charsetUTF8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 57
    .local v3, "str":Ljava/lang/String;
    invoke-static {p0}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUByte(Ljava/nio/ByteBuffer;)S

    move-result v4

    .line 58
    .local v4, "trailling":I
    return-object v3

    .line 61
    .end local v0    # "strLen":I
    .end local v1    # "bytesLen":I
    .end local v2    # "bytes":[B
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "trailling":I
    :cond_0
    invoke-static {p0}, Lcom/qihoo360/replugin/ext/parser/utils/ParseUtils;->readLen16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 62
    .restart local v0    # "strLen":I
    invoke-static {p0, v0}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "str":Ljava/lang/String;
    invoke-static {p0}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUShort(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 65
    .local v2, "trailling":I
    return-object v1
.end method

.method public static readStringPool(Ljava/nio/ByteBuffer;Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;)Lcom/qihoo360/replugin/ext/parser/struct/StringPool;
    .locals 23
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "stringPoolHeader"    # Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;

    move-object/from16 v0, p0

    .line 108
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    .line 109
    .local v1, "beginPos":J
    invoke-virtual/range {p1 .. p1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->getStringCount()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [J

    .line 111
    .local v3, "offsets":[J
    invoke-virtual/range {p1 .. p1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->getStringCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 112
    const/4 v5, 0x0

    .line 112
    .local v5, "idx":I
    :goto_0
    int-to-long v8, v5

    invoke-virtual/range {p1 .. p1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->getStringCount()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_0

    .line 113
    invoke-static/range {p0 .. p0}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    aput-wide v8, v3, v5

    .line 112
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 118
    .end local v5    # "idx":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->getFlags()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    and-long v12, v8, v10

    cmp-long v5, v12, v6

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 120
    .local v5, "sorted":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->getFlags()J

    move-result-wide v9

    const-wide/16 v11, 0x100

    and-long v13, v9, v11

    cmp-long v9, v13, v6

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    move v6, v8

    .line 123
    .local v6, "utf8":Z
    invoke-virtual/range {p1 .. p1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->getStringsStart()J

    move-result-wide v7

    add-long v9, v1, v7

    invoke-virtual/range {p1 .. p1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->getHeaderSize()I

    move-result v7

    int-to-long v7, v7

    sub-long v11, v9, v7

    .line 124
    .local v11, "stringPos":J
    long-to-int v7, v11

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    array-length v7, v3

    new-array v7, v7, [Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;

    .line 127
    .local v7, "entries":[Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;
    const/4 v8, 0x0

    .line 127
    .local v8, "i":I
    :goto_3
    array-length v9, v3

    if-ge v8, v9, :cond_3

    .line 128
    new-instance v9, Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;

    aget-wide v13, v3, v8

    move/from16 v16, v5

    add-long v4, v11, v13

    .line 128
    .end local v5    # "sorted":Z
    .local v16, "sorted":Z
    invoke-direct {v9, v8, v4, v5}, Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;-><init>(IJ)V

    aput-object v9, v7, v8

    .line 127
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v16

    goto :goto_3

    .line 131
    .end local v8    # "i":I
    .end local v16    # "sorted":Z
    .restart local v5    # "sorted":Z
    :cond_3
    move/from16 v16, v5

    .line 131
    .end local v5    # "sorted":Z
    .restart local v16    # "sorted":Z
    const/4 v4, 0x0

    .line 132
    .local v4, "lastStr":Ljava/lang/String;
    const-wide/16 v8, -0x1

    .line 133
    .local v8, "lastOffset":J
    new-instance v5, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    invoke-virtual/range {p1 .. p1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->getStringCount()J

    move-result-wide v13

    long-to-int v10, v13

    invoke-direct {v5, v10}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;-><init>(I)V

    .line 134
    .local v5, "stringPool":Lcom/qihoo360/replugin/ext/parser/struct/StringPool;
    array-length v10, v7

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v10, :cond_5

    aget-object v13, v7, v15

    .line 135
    .local v13, "entry":Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;
    invoke-virtual {v13}, Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;->getOffset()J

    move-result-wide v17

    cmp-long v14, v17, v8

    if-nez v14, :cond_4

    .line 136
    invoke-virtual {v13}, Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;->getIdx()I

    move-result v14

    invoke-virtual {v5, v14, v4}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->set(ILjava/lang/String;)V

    .line 137
    nop

    .line 134
    move-object/from16 v19, v3

    goto :goto_5

    .line 140
    :cond_4
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-virtual {v13}, Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;->getOffset()J

    move-result-wide v3

    .line 140
    .end local v3    # "offsets":[J
    .end local v4    # "lastStr":Ljava/lang/String;
    .local v19, "offsets":[J
    .local v20, "lastStr":Ljava/lang/String;
    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    invoke-virtual {v13}, Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;->getOffset()J

    move-result-wide v3

    .line 142
    .end local v8    # "lastOffset":J
    .local v3, "lastOffset":J
    invoke-static {v0, v6}, Lcom/qihoo360/replugin/ext/parser/utils/ParseUtils;->readString(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "str":Ljava/lang/String;
    move-object v9, v8

    .line 144
    .end local v20    # "lastStr":Ljava/lang/String;
    .local v9, "lastStr":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;->getIdx()I

    move-result v14

    invoke-virtual {v5, v14, v8}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->set(ILjava/lang/String;)V

    .line 134
    .end local v8    # "str":Ljava/lang/String;
    .end local v13    # "entry":Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;
    move-wide/from16 v21, v3

    move-object v4, v9

    move-wide/from16 v8, v21

    .line 134
    .end local v3    # "lastOffset":J
    .end local v9    # "lastStr":Ljava/lang/String;
    .restart local v4    # "lastStr":Ljava/lang/String;
    .local v8, "lastOffset":J
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v19

    goto :goto_4

    .line 148
    .end local v19    # "offsets":[J
    .local v3, "offsets":[J
    :cond_5
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .line 148
    .end local v3    # "offsets":[J
    .end local v4    # "lastStr":Ljava/lang/String;
    .restart local v19    # "offsets":[J
    .restart local v20    # "lastStr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->getStyleCount()J

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->getBodySize()I

    move-result v3

    int-to-long v3, v3

    add-long v13, v1, v3

    long-to-int v3, v13

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    return-object v5
.end method
