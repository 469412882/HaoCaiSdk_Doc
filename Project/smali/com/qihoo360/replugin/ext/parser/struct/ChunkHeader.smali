.class public Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;
.super Ljava/lang/Object;
.source "ChunkHeader.java"


# instance fields
.field private chunkSize:J

.field private chunkType:I

.field private headerSize:I


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0
    .param p1, "chunkType"    # I
    .param p2, "headerSize"    # I
    .param p3, "chunkSize"    # J

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->chunkType:I

    .line 63
    iput p2, p0, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->headerSize:I

    .line 64
    iput-wide p3, p0, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->chunkSize:J

    .line 65
    return-void
.end method


# virtual methods
.method public getBodySize()I
    .locals 6

    .line 68
    iget-wide v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->chunkSize:J

    iget v2, p0, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->headerSize:I

    int-to-long v2, v2

    sub-long v4, v0, v2

    long-to-int v0, v4

    return v0
.end method

.method public getChunkSize()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->chunkSize:J

    return-wide v0
.end method

.method public getChunkType()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->chunkType:I

    return v0
.end method

.method public getHeaderSize()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->headerSize:I

    return v0
.end method

.method public setChunkSize(J)V
    .locals 0
    .param p1, "chunkSize"    # J

    .line 92
    iput-wide p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->chunkSize:J

    .line 93
    return-void
.end method

.method public setChunkType(I)V
    .locals 0
    .param p1, "chunkType"    # I

    .line 76
    iput p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->chunkType:I

    .line 77
    return-void
.end method

.method public setHeaderSize(I)V
    .locals 0
    .param p1, "headerSize"    # I

    .line 84
    iput p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;->headerSize:I

    .line 85
    return-void
.end method
