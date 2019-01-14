.class public Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;
.super Ljava/lang/Object;
.source "StringPoolEntry.java"


# instance fields
.field private idx:I

.field private offset:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "offset"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;->idx:I

    .line 38
    iput-wide p2, p0, Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;->offset:J

    .line 39
    return-void
.end method


# virtual methods
.method public getIdx()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;->idx:I

    return v0
.end method

.method public getOffset()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;->offset:J

    return-wide v0
.end method

.method public setIdx(I)V
    .locals 0
    .param p1, "idx"    # I

    .line 46
    iput p1, p0, Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;->idx:I

    .line 47
    return-void
.end method

.method public setOffset(J)V
    .locals 0
    .param p1, "offset"    # J

    .line 54
    iput-wide p1, p0, Lcom/qihoo360/replugin/ext/parser/parser/StringPoolEntry;->offset:J

    .line 55
    return-void
.end method
