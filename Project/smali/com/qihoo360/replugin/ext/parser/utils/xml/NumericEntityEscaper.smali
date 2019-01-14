.class Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;
.super Lcom/qihoo360/replugin/ext/parser/utils/xml/CodePointTranslator;
.source "NumericEntityEscaper.java"


# instance fields
.field private final above:I

.field private final below:I

.field private final between:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 60
    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;-><init>(IIZ)V

    .line 61
    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 0
    .param p1, "below"    # I
    .param p2, "above"    # I
    .param p3, "between"    # Z

    .line 50
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/utils/xml/CodePointTranslator;-><init>()V

    .line 51
    iput p1, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;->below:I

    .line 52
    iput p2, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;->above:I

    .line 53
    iput-boolean p3, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;->between:Z

    .line 54
    return-void
.end method

.method public static above(I)Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;
    .locals 1
    .param p0, "codepoint"    # I

    .line 80
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;->outsideOf(II)Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static below(I)Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;
    .locals 1
    .param p0, "codepoint"    # I

    .line 70
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;->outsideOf(II)Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static between(II)Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;
    .locals 2
    .param p0, "codepointLow"    # I
    .param p1, "codepointHigh"    # I

    .line 91
    new-instance v0, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;
    .locals 2
    .param p0, "codepointLow"    # I
    .param p1, "codepointHigh"    # I

    .line 102
    new-instance v0, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public translate(ILjava/io/Writer;)Z
    .locals 2
    .param p1, "codepoint"    # I
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;->between:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 111
    iget v0, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;->below:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;->above:I

    if-le p1, v0, :cond_2

    .line 112
    :cond_0
    return v1

    .line 115
    :cond_1
    iget v0, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;->below:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;->above:I

    if-gt p1, v0, :cond_2

    .line 116
    return v1

    .line 120
    :cond_2
    const-string v0, "&#"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 121
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 122
    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 123
    const/4 v0, 0x1

    return v0
.end method
