.class Lcom/qihoo360/replugin/ext/parser/utils/xml/UnicodeUnpairedSurrogateRemover;
.super Lcom/qihoo360/replugin/ext/parser/utils/xml/CodePointTranslator;
.source "UnicodeUnpairedSurrogateRemover.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/utils/xml/CodePointTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(ILjava/io/Writer;)Z
    .locals 1
    .param p1, "codepoint"    # I
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const v0, 0xd800

    if-lt p1, v0, :cond_0

    const v0, 0xdfff

    if-gt p1, v0, :cond_0

    .line 43
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
