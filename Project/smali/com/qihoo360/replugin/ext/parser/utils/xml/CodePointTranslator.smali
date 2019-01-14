.class abstract Lcom/qihoo360/replugin/ext/parser/utils/xml/CodePointTranslator;
.super Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;
.source "CodePointTranslator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public final translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 2
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 44
    .local v0, "codepoint":I
    invoke-virtual {p0, v0, p3}, Lcom/qihoo360/replugin/ext/parser/utils/xml/CodePointTranslator;->translate(ILjava/io/Writer;)Z

    move-result v1

    .line 45
    .local v1, "consumed":Z
    return v1
.end method

.method public abstract translate(ILjava/io/Writer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
