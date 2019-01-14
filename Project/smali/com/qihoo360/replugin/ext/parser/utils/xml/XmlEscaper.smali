.class public Lcom/qihoo360/replugin/ext/parser/utils/xml/XmlEscaper;
.super Ljava/lang/Object;
.source "XmlEscaper.java"


# static fields
.field public static final ESCAPE_XML10:Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 36
    new-instance v0, Lcom/qihoo360/replugin/ext/parser/utils/xml/AggregateTranslator;

    const/4 v1, 0x6

    new-array v2, v1, [Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;

    new-instance v3, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;

    .line 38
    invoke-static {}, Lcom/qihoo360/replugin/ext/parser/utils/xml/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;

    .line 39
    invoke-static {}, Lcom/qihoo360/replugin/ext/parser/utils/xml/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;

    const/16 v6, 0x1f

    new-array v6, v6, [[Ljava/lang/String;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "\u0000"

    aput-object v9, v8, v4

    const-string v9, ""

    aput-object v9, v8, v5

    aput-object v8, v6, v4

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "\u0001"

    aput-object v9, v8, v4

    const-string v9, ""

    aput-object v9, v8, v5

    aput-object v8, v6, v5

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "\u0002"

    aput-object v9, v8, v4

    const-string v9, ""

    aput-object v9, v8, v5

    aput-object v8, v6, v7

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "\u0003"

    aput-object v9, v8, v4

    const-string v9, ""

    aput-object v9, v8, v5

    const/4 v9, 0x3

    aput-object v8, v6, v9

    new-array v8, v7, [Ljava/lang/String;

    const-string v10, "\u0004"

    aput-object v10, v8, v4

    const-string v10, ""

    aput-object v10, v8, v5

    const/4 v10, 0x4

    aput-object v8, v6, v10

    new-array v8, v7, [Ljava/lang/String;

    const-string v11, "\u0005"

    aput-object v11, v8, v4

    const-string v11, ""

    aput-object v11, v8, v5

    const/4 v11, 0x5

    aput-object v8, v6, v11

    new-array v8, v7, [Ljava/lang/String;

    const-string v12, "\u0006"

    aput-object v12, v8, v4

    const-string v12, ""

    aput-object v12, v8, v5

    aput-object v8, v6, v1

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u0007"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/4 v8, 0x7

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u0008"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x8

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u000b"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x9

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u000c"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0xa

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u000e"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0xb

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u000f"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0xc

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u0010"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0xd

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u0011"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0xe

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u0012"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0xf

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u0013"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x10

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u0014"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x11

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u0015"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x12

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u0016"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x13

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u0017"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x14

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u0018"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x15

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u0019"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x16

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u001a"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x17

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u001b"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x18

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u001c"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x19

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u001d"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x1a

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u001e"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x1b

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\u001f"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x1c

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\ufffe"

    aput-object v8, v1, v4

    const-string v8, ""

    aput-object v8, v1, v5

    const/16 v8, 0x1d

    aput-object v1, v6, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v8, "\uffff"

    aput-object v8, v1, v4

    const-string v4, ""

    aput-object v4, v1, v5

    const/16 v4, 0x1e

    aput-object v1, v6, v4

    invoke-direct {v3, v6}, Lcom/qihoo360/replugin/ext/parser/utils/xml/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v2, v7

    .line 74
    const/16 v1, 0x7f

    const/16 v3, 0x84

    invoke-static {v1, v3}, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;->between(II)Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;

    move-result-object v1

    aput-object v1, v2, v9

    .line 75
    const/16 v1, 0x86

    const/16 v3, 0x9f

    invoke-static {v1, v3}, Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;->between(II)Lcom/qihoo360/replugin/ext/parser/utils/xml/NumericEntityEscaper;

    move-result-object v1

    aput-object v1, v2, v10

    new-instance v1, Lcom/qihoo360/replugin/ext/parser/utils/xml/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v1}, Lcom/qihoo360/replugin/ext/parser/utils/xml/UnicodeUnpairedSurrogateRemover;-><init>()V

    aput-object v1, v2, v11

    invoke-direct {v0, v2}, Lcom/qihoo360/replugin/ext/parser/utils/xml/AggregateTranslator;-><init>([Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;)V

    sput-object v0, Lcom/qihoo360/replugin/ext/parser/utils/xml/XmlEscaper;->ESCAPE_XML10:Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeXml10(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/qihoo360/replugin/ext/parser/utils/xml/XmlEscaper;->ESCAPE_XML10:Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/qihoo360/replugin/ext/parser/utils/xml/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
