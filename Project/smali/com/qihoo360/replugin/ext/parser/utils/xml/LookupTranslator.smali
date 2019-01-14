.class Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;
.super Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;
.source "LookupTranslator.java"


# instance fields
.field private final longest:I

.field private final lookupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final shortest:I


# direct methods
.method public varargs constructor <init>([[Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "lookup"    # [[Ljava/lang/CharSequence;

    .line 51
    invoke-direct {p0}, Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    .line 53
    const v0, 0x7fffffff

    .line 54
    .local v0, "shortest":I
    const/4 v1, 0x0

    .line 55
    .local v1, "longest":I
    if-eqz p1, :cond_3

    .line 56
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v1

    move v1, v0

    const/4 v0, 0x0

    .line 56
    .end local v0    # "shortest":I
    .local v1, "shortest":I
    .local v4, "longest":I
    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v5, p1, v0

    .line 57
    .local v5, "seq":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    aget-object v7, v5, v3

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    aget-object v6, v5, v3

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 59
    .local v6, "sz":I
    if-ge v6, v1, :cond_0

    .line 60
    move v1, v6

    .line 62
    :cond_0
    if-le v6, v4, :cond_1

    .line 63
    move v4, v6

    .line 56
    .end local v5    # "seq":[Ljava/lang/CharSequence;
    .end local v6    # "sz":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_2
    move v0, v1

    move v1, v4

    .line 67
    .end local v4    # "longest":I
    .restart local v0    # "shortest":I
    .local v1, "longest":I
    :cond_3
    iput v0, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;->shortest:I

    .line 68
    iput v1, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;->longest:I

    .line 69
    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 5
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget v0, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;->longest:I

    .line 77
    .local v0, "max":I
    iget v1, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;->longest:I

    add-int/2addr v1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 78
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v0, v1, p2

    .line 81
    :cond_0
    move v1, v0

    .line 81
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;->shortest:I

    if-lt v1, v2, :cond_2

    .line 82
    add-int v2, p2, v1

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 83
    .local v2, "subSeq":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 84
    .local v3, "result":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    .line 85
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 86
    return v1

    .line 81
    .end local v2    # "subSeq":Ljava/lang/CharSequence;
    .end local v3    # "result":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method
