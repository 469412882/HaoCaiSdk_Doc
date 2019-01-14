.class Lcom/qihoo360/replugin/ext/parser/utils/xml/AggregateTranslator;
.super Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;
.source "AggregateTranslator.java"


# instance fields
.field private final translators:[Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;


# direct methods
.method public varargs constructor <init>([Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;)V
    .locals 0
    .param p1, "translators"    # [Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;

    .line 44
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/AggregateTranslator;->translators:[Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;

    .line 46
    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 6
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/AggregateTranslator;->translators:[Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 56
    .local v4, "translator":Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;
    invoke-virtual {v4, p1, p2, p3}, Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v5

    .line 57
    .local v5, "consumed":I
    if-eqz v5, :cond_0

    .line 58
    return v5

    .line 55
    .end local v4    # "translator":Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;
    .end local v5    # "consumed":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_1
    return v2
.end method
