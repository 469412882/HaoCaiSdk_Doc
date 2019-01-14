.class abstract Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;
.super Ljava/lang/Object;
.source "CharSequenceTranslator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hex(I)Ljava/lang/String;
    .locals 2
    .param p0, "codepoint"    # I

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final translate(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 77
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 79
    .end local v0    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 5
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    if-nez p2, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    if-nez p1, :cond_1

    .line 98
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    .line 101
    .local v0, "pos":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 102
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 103
    invoke-virtual {p0, p1, v0, p2}, Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v2

    .line 104
    .local v2, "consumed":I
    if-nez v2, :cond_2

    .line 105
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    .line 106
    .local v3, "c":[C
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write([C)V

    .line 107
    array-length v4, v3

    add-int/2addr v0, v4

    .line 108
    goto :goto_0

    .line 112
    .end local v3    # "c":[C
    :cond_2
    const/4 v3, 0x0

    .line 112
    .local v3, "pt":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 113
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 115
    .end local v2    # "consumed":I
    .end local v3    # "pt":I
    :cond_3
    goto :goto_0

    .line 116
    :cond_4
    return-void
.end method

.method public final varargs with([Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;)Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;
    .locals 4
    .param p1, "translators"    # [Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;

    .line 126
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;

    .line 127
    .local v0, "newArray":[Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 128
    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    new-instance v1, Lcom/qihoo360/replugin/ext/parser/utils/xml/AggregateTranslator;

    invoke-direct {v1, v0}, Lcom/qihoo360/replugin/ext/parser/utils/xml/AggregateTranslator;-><init>([Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;)V

    return-object v1
.end method
