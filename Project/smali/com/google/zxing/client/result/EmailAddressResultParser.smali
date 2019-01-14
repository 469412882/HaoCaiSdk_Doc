.class public final Lcom/google/zxing/client/result/EmailAddressResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "EmailAddressResultParser.java"


# static fields
.field private static final COMMA:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 17
    .param p1, "result"    # Lcom/google/zxing/Result;

    const/4 v1, 0x0

    .line 36
    .local v1, "rawText":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v2

    .line 37
    move-object v1, v2

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "MAILTO:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {v1}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    return-object v3

    .line 81
    :cond_1
    new-instance v2, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    invoke-direct {v2, v1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 39
    :cond_2
    :goto_0
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    .line 40
    .local v4, "hostEmail":Ljava/lang/String;
    move-object v4, v2

    const/16 v5, 0x3f

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, 0x0

    move v6, v5

    .line 41
    .local v6, "queryStart":I
    move v6, v2

    if-ltz v2, :cond_3

    .line 42
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 45
    :cond_3
    :try_start_0
    invoke-static {v4}, Lcom/google/zxing/client/result/EmailAddressResultParser;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v4    # "hostEmail":Ljava/lang/String;
    .local v2, "hostEmail":Ljava/lang/String;
    nop

    .line 49
    const/4 v4, 0x0

    .line 50
    .local v4, "tos":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 51
    sget-object v5, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 53
    :cond_4
    invoke-static {v1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 54
    .local v5, "nameValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 55
    .local v7, "ccs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 56
    .local v8, "bccs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 57
    .local v9, "subject":Ljava/lang/String;
    const/4 v10, 0x0

    .line 58
    .local v10, "body":Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 59
    if-nez v4, :cond_5

    .line 60
    const-string v11, "to"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v12, v3

    .line 61
    .local v12, "tosString":Ljava/lang/String;
    move-object v12, v11

    if-eqz v11, :cond_6

    .line 62
    sget-object v11, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 62
    .end local v12    # "tosString":Ljava/lang/String;
    goto :goto_1

    .line 65
    :cond_5
    move-object v12, v3

    .line 65
    .local v12, "ccString":Ljava/lang/String;
    :cond_6
    :goto_1
    const-string v11, "cc"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 66
    move-object v12, v11

    if-eqz v11, :cond_7

    .line 67
    sget-object v11, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    .line 69
    :cond_7
    const-string v11, "bcc"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 70
    .local v3, "bccString":Ljava/lang/String;
    move-object v3, v11

    if-eqz v11, :cond_8

    .line 71
    sget-object v11, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    .line 73
    :cond_8
    const-string v11, "subject"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    check-cast v9, Ljava/lang/String;

    .line 74
    const-string v11, "body"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Ljava/lang/String;

    .line 76
    .end local v3    # "bccString":Ljava/lang/String;
    .end local v12    # "ccString":Ljava/lang/String;
    :cond_9
    new-instance v3, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-object v11, v3

    move-object v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object v15, v9

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 46
    .end local v2    # "hostEmail":Ljava/lang/String;
    .end local v5    # "nameValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "ccs":[Ljava/lang/String;
    .end local v8    # "bccs":[Ljava/lang/String;
    .end local v9    # "subject":Ljava/lang/String;
    .end local v10    # "body":Ljava/lang/String;
    .local v4, "hostEmail":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 47
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    return-object v3
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object p1

    return-object p1
.end method
