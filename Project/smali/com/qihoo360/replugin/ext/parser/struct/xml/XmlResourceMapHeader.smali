.class public Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlResourceMapHeader;
.super Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;
.source "XmlResourceMapHeader.java"


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0
    .param p1, "chunkType"    # I
    .param p2, "headerSize"    # I
    .param p3, "chunkSize"    # J

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qihoo360/replugin/ext/parser/struct/ChunkHeader;-><init>(IIJ)V

    .line 37
    return-void
.end method
