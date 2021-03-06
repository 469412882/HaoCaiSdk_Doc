.class public final Lcom/google/zxing/client/result/EmailDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "EmailDoCoMoResultParser.java"


# static fields
.field private static final ATEXT_ALPHANUMERIC:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "[a-zA-Z0-9@.!#$%&\'*+\\-/=?^_`{|}~]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->ATEXT_ALPHANUMERIC:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method static isBasicallyValidEmailAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .line 61
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->ATEXT_ALPHANUMERIC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 11
    .param p1, "result"    # Lcom/google/zxing/Result;

    const/4 v0, 0x0

    .line 36
    .local v0, "rawText":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v1

    .line 37
    move-object v0, v1

    const-string v2, "MATMSG:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 38
    return-object v2

    .line 40
    :cond_0
    const-string v1, "TO:"

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    .line 41
    .local v3, "tos":[Ljava/lang/String;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 42
    return-object v2

    .line 44
    :cond_1
    array-length v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    aget-object v6, v3, v5

    .line 45
    invoke-static {v6}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 46
    return-object v2

    .line 44
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    :cond_3
    const-string v1, "SUB:"

    invoke-static {v1, v0, v4}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "subject":Ljava/lang/String;
    const-string v2, "BODY:"

    invoke-static {v2, v0, v4}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "body":Ljava/lang/String;
    new-instance v10, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v10

    move-object v5, v3

    move-object v8, v1

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object p1

    return-object p1
.end method
