.class public final Lcom/google/zxing/client/result/GeoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "GeoResultParser.java"


# static fields
.field private static final GEO_URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-string v0, "geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?"

    .line 35
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;
    .locals 17
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/GeoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "rawText":Ljava/lang/CharSequence;
    sget-object v2, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 41
    .local v4, "matcher":Ljava/util/regex/Matcher;
    move-object v4, v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    return-object v3

    .line 45
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 51
    .local v12, "query":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    .line 52
    .local v9, "latitude":D
    move-wide v9, v5

    const-wide v13, 0x4056800000000000L    # 90.0

    cmpl-double v2, v5, v13

    if-gtz v2, :cond_6

    const-wide v5, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v9, v5

    if-gez v2, :cond_1

    goto :goto_2

    .line 55
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    move-wide v13, v7

    .line 56
    .local v13, "longitude":D
    move-wide v13, v5

    const-wide v15, 0x4066800000000000L    # 180.0

    cmpl-double v2, v5, v15

    if-gtz v2, :cond_5

    const-wide v5, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v13, v5

    if-gez v2, :cond_2

    goto :goto_1

    .line 59
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 60
    const-wide/16 v2, 0x0

    .line 68
    .local v2, "altitude":D
    move-wide v15, v2

    goto :goto_0

    .line 62
    .end local v2    # "altitude":D
    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v15, v7

    .line 63
    .local v15, "altitude":D
    move-wide v15, v5

    cmpg-double v2, v5, v7

    if-gez v2, :cond_4

    .line 64
    return-object v3

    .line 69
    :cond_4
    nop

    .line 68
    :goto_0
    move-wide v6, v9

    .line 68
    .end local v9    # "latitude":D
    .local v6, "latitude":D
    move-wide v8, v13

    .line 68
    .end local v13    # "longitude":D
    .local v8, "longitude":D
    move-wide v10, v15

    .line 70
    .end local v15    # "altitude":D
    .local v10, "altitude":D
    new-instance v2, Lcom/google/zxing/client/result/GeoParsedResult;

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/google/zxing/client/result/GeoParsedResult;-><init>(DDDLjava/lang/String;)V

    return-object v2

    .line 57
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v10    # "altitude":D
    .restart local v9    # "latitude":D
    .restart local v13    # "longitude":D
    :cond_5
    :goto_1
    return-object v3

    .line 53
    .end local v13    # "longitude":D
    :cond_6
    :goto_2
    return-object v3

    .line 67
    .end local v9    # "latitude":D
    :catch_0
    move-exception v0

    .line 68
    return-object v3
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/GeoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;

    move-result-object p1

    return-object p1
.end method
