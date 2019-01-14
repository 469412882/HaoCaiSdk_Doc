.class public Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;
.super Ljava/lang/Object;
.source "BinaryXmlParser.java"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private byteOrder:Ljava/nio/ByteOrder;

.field private resourceMap:[Ljava/lang/String;

.field private stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

.field private xmlStreamer:Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->byteOrder:Ljava/nio/ByteOrder;

    .line 70
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    .line 71
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    return-void
.end method

.method private readAttribute()Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;
    .locals 6

    .line 194
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 195
    .local v0, "nsRef":I
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 196
    .local v1, "nameRef":I
    new-instance v2, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;

    invoke-direct {v2}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;-><init>()V

    .line 197
    .local v2, "attribute":Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;
    if-lez v0, :cond_0

    .line 198
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    invoke-virtual {v3, v0}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->setNamespace(Ljava/lang/String;)V

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    invoke-virtual {v3, v1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->setName(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v2}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->resourceMap:[Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->resourceMap:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 204
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->resourceMap:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->setName(Ljava/lang/String;)V

    .line 208
    :cond_1
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 209
    .local v3, "rawValueRef":I
    if-lez v3, :cond_2

    .line 210
    iget-object v4, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    invoke-virtual {v4, v3}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->setRawValue(Ljava/lang/String;)V

    .line 212
    :cond_2
    iget-object v4, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/ext/parser/utils/ParseUtils;->readResValue(Ljava/nio/ByteBuffer;Lcom/qihoo360/replugin/ext/parser/struct/StringPool;)Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue;

    .line 214
    return-object v2
.end method

.method private readChunkHeader()Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;
    .locals 12

    .line 254
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    .line 259
    .local v0, "begin":J
    iget-object v2, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUShort(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 260
    .local v2, "chunkType":I
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUShort(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 261
    .local v3, "headerSize":I
    iget-object v4, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 263
    .local v4, "chunkSize":J
    const/4 v6, 0x3

    if-eq v2, v6, :cond_2

    const/16 v6, 0x180

    if-eq v2, v6, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 291
    new-instance v6, Lcom/qihoo360/replugin/ext/parser/exception/ParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected chunk type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/qihoo360/replugin/ext/parser/exception/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 283
    :pswitch_0
    new-instance v6, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeHeader;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeHeader;-><init>(IIJ)V

    .line 284
    .local v6, "header":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeHeader;
    iget-object v7, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeHeader;->setLineNum(I)V

    .line 285
    iget-object v7, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeHeader;->setCommentRef(I)V

    .line 286
    iget-object v7, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    int-to-long v8, v3

    add-long v10, v0, v8

    long-to-int v8, v10

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 287
    return-object v6

    .line 267
    .end local v6    # "header":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeHeader;
    :pswitch_1
    new-instance v6, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;-><init>(IIJ)V

    .line 268
    .local v6, "stringPoolHeader":Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;
    iget-object v7, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->setStringCount(J)V

    .line 269
    iget-object v7, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->setStyleCount(J)V

    .line 270
    iget-object v7, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->setFlags(J)V

    .line 271
    iget-object v7, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->setStringsStart(J)V

    .line 272
    iget-object v7, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;->setStylesStart(J)V

    .line 273
    iget-object v7, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    int-to-long v8, v3

    add-long v10, v0, v8

    long-to-int v8, v10

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 274
    return-object v6

    .line 289
    .end local v6    # "stringPoolHeader":Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;
    :pswitch_2
    new-instance v6, Lcom/qihoo360/replugin/ext/parser/struct/xml/NullHeader;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/qihoo360/replugin/ext/parser/struct/xml/NullHeader;-><init>(IIJ)V

    return-object v6

    .line 276
    :cond_1
    iget-object v6, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    int-to-long v7, v3

    add-long v9, v0, v7

    long-to-int v7, v9

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    new-instance v6, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlResourceMapHeader;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlResourceMapHeader;-><init>(IIJ)V

    return-object v6

    .line 265
    :cond_2
    new-instance v6, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlHeader;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlHeader;-><init>(IIJ)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readXmlNamespaceEndTag()Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 232
    .local v0, "prefixRef":I
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 233
    .local v1, "uriRef":I
    new-instance v2, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;

    invoke-direct {v2}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;-><init>()V

    .line 234
    .local v2, "nameSpace":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;
    if-lez v0, :cond_0

    .line 235
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    invoke-virtual {v3, v0}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;->setPrefix(Ljava/lang/String;)V

    .line 237
    :cond_0
    if-lez v1, :cond_1

    .line 238
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    invoke-virtual {v3, v1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;->setUri(Ljava/lang/String;)V

    .line 240
    :cond_1
    return-object v2
.end method

.method private readXmlNamespaceStartTag()Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 219
    .local v0, "prefixRef":I
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 220
    .local v1, "uriRef":I
    new-instance v2, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;

    invoke-direct {v2}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;-><init>()V

    .line 221
    .local v2, "nameSpace":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;
    if-lez v0, :cond_0

    .line 222
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    invoke-virtual {v3, v0}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;->setPrefix(Ljava/lang/String;)V

    .line 224
    :cond_0
    if-lez v1, :cond_1

    .line 225
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    invoke-virtual {v3, v1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;->setUri(Ljava/lang/String;)V

    .line 227
    :cond_1
    return-object v2
.end method

.method private readXmlNodeEndTag()Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;
    .locals 4

    .line 143
    new-instance v0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;

    invoke-direct {v0}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;-><init>()V

    .line 144
    .local v0, "xmlNodeEndTag":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 145
    .local v1, "nsRef":I
    iget-object v2, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 146
    .local v2, "nameRef":I
    if-lez v1, :cond_0

    .line 147
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    invoke-virtual {v3, v1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;->setNamespace(Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    invoke-virtual {v3, v2}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;->setName(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->xmlStreamer:Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;

    if-eqz v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->xmlStreamer:Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;

    invoke-interface {v3, v0}, Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;->onEndTag(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;)V

    .line 153
    :cond_1
    return-object v0
.end method

.method private readXmlNodeStartTag()Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;
    .locals 13

    .line 157
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 158
    .local v0, "nsRef":I
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 159
    .local v1, "nameRef":I
    new-instance v2, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;

    invoke-direct {v2}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;-><init>()V

    .line 160
    .local v2, "xmlNodeStartTag":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;
    if-lez v0, :cond_0

    .line 161
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    invoke-virtual {v3, v0}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->setNamespace(Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    invoke-virtual {v3, v1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->setName(Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUShort(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 168
    .local v3, "attributeStart":I
    iget-object v4, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUShort(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 169
    .local v4, "attributeSize":I
    iget-object v5, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v5}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUShort(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 170
    .local v5, "attributeCount":I
    iget-object v6, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v6}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUShort(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 171
    .local v6, "idIndex":I
    iget-object v7, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUShort(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 172
    .local v7, "classIndex":I
    iget-object v8, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v8}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUShort(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 175
    .local v8, "styleIndex":I
    new-instance v9, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;

    invoke-direct {v9, v5}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;-><init>(I)V

    .line 176
    .local v9, "attributes":Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;
    const/4 v10, 0x0

    .line 176
    .local v10, "count":I
    :goto_0
    if-ge v10, v5, :cond_2

    .line 177
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->readAttribute()Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;

    move-result-object v11

    .line 178
    .local v11, "attribute":Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;
    iget-object v12, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->xmlStreamer:Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;

    if-eqz v12, :cond_1

    .line 179
    invoke-virtual {v11}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->getRawValue()Ljava/lang/String;

    move-result-object v12

    .line 180
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v11, v12}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->setValue(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v9, v10, v11}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;->set(ILcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;)V

    .line 176
    .end local v11    # "attribute":Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;
    .end local v12    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 184
    .end local v10    # "count":I
    :cond_2
    invoke-virtual {v2, v9}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->setAttributes(Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;)V

    .line 186
    iget-object v10, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->xmlStreamer:Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;

    if-eqz v10, :cond_3

    .line 187
    iget-object v10, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->xmlStreamer:Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;

    invoke-interface {v10, v2}, Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;->onStartTag(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;)V

    .line 190
    :cond_3
    return-object v2
.end method

.method private readXmlResourceMap(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlResourceMapHeader;)[J
    .locals 5
    .param p1, "chunkHeader"    # Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlResourceMapHeader;

    .line 244
    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlResourceMapHeader;->getBodySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 245
    .local v0, "count":I
    new-array v1, v0, [J

    .line 246
    .local v1, "resourceIds":[J
    const/4 v2, 0x0

    .line 246
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 247
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->readUInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public parse()V
    .locals 10

    .line 78
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->readChunkHeader()Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;

    move-result-object v0

    .line 79
    .local v0, "chunkHeader":Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;
    if-nez v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    invoke-virtual {v0}, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->getChunkType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->getChunkType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    return-void

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->readChunkHeader()Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;

    move-result-object v0

    .line 90
    if-nez v0, :cond_2

    .line 91
    return-void

    .line 93
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->getChunkType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/ext/parser/utils/ParseUtils;->checkChunkType(II)V

    .line 94
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    move-object v2, v0

    check-cast v2, Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/ext/parser/utils/ParseUtils;->readStringPool(Ljava/nio/ByteBuffer;Lcom/qihoo360/replugin/ext/parser/struct/StringPoolHeader;)Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    move-result-object v1

    iput-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    .line 97
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->readChunkHeader()Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;

    move-result-object v0

    .line 98
    if-nez v0, :cond_3

    .line 99
    return-void

    .line 101
    :cond_3
    invoke-virtual {v0}, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->getChunkType()I

    move-result v1

    const/16 v2, 0x180

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 102
    move-object v1, v0

    check-cast v1, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlResourceMapHeader;

    invoke-direct {p0, v1}, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->readXmlResourceMap(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlResourceMapHeader;)[J

    move-result-object v1

    .line 103
    .local v1, "resourceIds":[J
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->resourceMap:[Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->readChunkHeader()Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;

    move-result-object v0

    .line 107
    .local v1, "namespaceStartTag":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;
    .local v3, "xmlNamespaceEndTag":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;
    :cond_4
    move-object v1, v3

    :goto_0
    if-eqz v0, :cond_6

    .line 111
    iget-object v2, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v4, v2

    .line 112
    .local v4, "beginPos":J
    invoke-virtual {v0}, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->getChunkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 130
    invoke-virtual {v0}, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->getChunkType()I

    move-result v2

    const/16 v6, 0x100

    if-lt v2, v6, :cond_5

    .line 131
    invoke-virtual {v0}, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->getChunkType()I

    move-result v2

    const/16 v6, 0x17f

    if-gt v2, v6, :cond_5

    .line 132
    iget-object v2, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->getBodySize()I

    move-result v6

    invoke-static {v2, v6}, Lcom/qihoo360/replugin/ext/parser/utils/Buffers;->skip(Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    .line 128
    :pswitch_0
    goto :goto_1

    .line 125
    :pswitch_1
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->readXmlNodeEndTag()Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;

    .line 126
    goto :goto_1

    .line 122
    :pswitch_2
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->readXmlNodeStartTag()Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;

    .line 123
    goto :goto_1

    .line 114
    .end local v3    # "xmlNamespaceEndTag":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;
    :pswitch_3
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->readXmlNamespaceEndTag()Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;

    move-result-object v2

    .line 115
    .local v2, "xmlNamespaceEndTag":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->xmlStreamer:Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;

    invoke-interface {v3, v2}, Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;->onNamespaceEnd(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;)V

    .line 116
    nop

    .line 137
    move-object v3, v2

    goto :goto_1

    .line 118
    .end local v1    # "namespaceStartTag":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;
    .end local v2    # "xmlNamespaceEndTag":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;
    .restart local v3    # "xmlNamespaceEndTag":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;
    :pswitch_4
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->readXmlNamespaceStartTag()Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;

    move-result-object v1

    .line 119
    .restart local v1    # "namespaceStartTag":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;
    iget-object v2, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->xmlStreamer:Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;

    invoke-interface {v2, v1}, Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;->onNamespaceStart(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;)V

    .line 120
    nop

    .line 137
    :goto_1
    iget-object v2, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->getBodySize()I

    move-result v6

    int-to-long v6, v6

    add-long v8, v4, v6

    long-to-int v6, v8

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->readChunkHeader()Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;

    move-result-object v0

    .line 139
    .end local v4    # "beginPos":J
    goto :goto_0

    .line 134
    .restart local v4    # "beginPos":J
    :cond_5
    new-instance v2, Lcom/qihoo360/replugin/ext/parser/exception/ParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected chunk type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->getChunkType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/qihoo360/replugin/ext/parser/exception/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v1    # "namespaceStartTag":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;
    .end local v3    # "xmlNamespaceEndTag":Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;
    .end local v4    # "beginPos":J
    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setXmlStreamer(Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;)V
    .locals 0
    .param p1, "xmlStreamer"    # Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;

    .line 296
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/parser/BinaryXmlParser;->xmlStreamer:Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;

    .line 297
    return-void
.end method
