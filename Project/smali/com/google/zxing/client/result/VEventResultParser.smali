.class public final Lcom/google/zxing/client/result/VEventResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VEventResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z

    const/4 v0, 0x0

    .line 95
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 96
    move-object v0, v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 6
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z

    const/4 v0, 0x0

    .line 100
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 101
    move-object v0, v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    .line 105
    .local v3, "size":I
    move v3, v2

    new-array v2, v2, [Ljava/lang/String;

    .line 106
    .local v2, "result":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 106
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 107
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v4

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    .end local v4    # "i":I
    :cond_1
    return-object v2

    .line 102
    .end local v2    # "result":[Ljava/lang/String;
    .end local v3    # "size":I
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static stripMailto(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 113
    if-eqz p0, :cond_1

    const-string v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MAILTO:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 116
    :cond_1
    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;
    .locals 25
    .param p1, "result"    # Lcom/google/zxing/Result;

    const/4 v1, 0x0

    .line 33
    .local v1, "rawText":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/VEventResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v2

    .line 34
    move-object v1, v2

    const-string v3, "BEGIN:VEVENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 35
    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 36
    return-object v3

    .line 39
    :cond_0
    const-string v2, "SUMMARY"

    const/4 v4, 0x1

    invoke-static {v2, v1, v4}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "summary":Ljava/lang/String;
    const-string v5, "DTSTART"

    invoke-static {v5, v1, v4}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    .line 41
    .local v6, "start":Ljava/lang/String;
    move-object v7, v5

    .line 41
    .end local v6    # "start":Ljava/lang/String;
    .local v7, "start":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 42
    return-object v3

    .line 44
    :cond_1
    const-string v5, "DTEND"

    invoke-static {v5, v1, v4}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    .line 45
    .local v18, "end":Ljava/lang/String;
    const-string v5, "DURATION"

    invoke-static {v5, v1, v4}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 46
    .local v19, "duration":Ljava/lang/String;
    const-string v5, "LOCATION"

    invoke-static {v5, v1, v4}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    .line 47
    .local v20, "location":Ljava/lang/String;
    const-string v5, "ORGANIZER"

    invoke-static {v5, v1, v4}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 49
    .local v21, "organizer":Ljava/lang/String;
    const-string v5, "ATTENDEE"

    invoke-static {v5, v1, v4}, Lcom/google/zxing/client/result/VEventResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    .line 50
    .local v6, "attendees":[Ljava/lang/String;
    move-object v13, v5

    .line 50
    .end local v6    # "attendees":[Ljava/lang/String;
    .local v13, "attendees":[Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 51
    const/4 v5, 0x0

    .line 51
    .local v5, "i":I
    :goto_0
    array-length v8, v13

    if-ge v5, v8, :cond_2

    .line 52
    aget-object v8, v13, v5

    invoke-static {v8}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v13, v5

    .line 51
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 55
    .end local v5    # "i":I
    :cond_2
    const-string v5, "DESCRIPTION"

    invoke-static {v5, v1, v4}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v22

    .line 57
    .local v22, "description":Ljava/lang/String;
    const-string v5, "GEO"

    invoke-static {v5, v1, v4}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    .line 60
    .local v5, "geoString":Ljava/lang/String;
    move-object v12, v4

    .line 60
    .end local v5    # "geoString":Ljava/lang/String;
    .local v12, "geoString":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 61
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    .line 62
    .local v4, "latitude":D
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    .line 72
    .local v8, "longitude":D
    move-wide v14, v4

    move-wide/from16 v16, v8

    goto :goto_1

    .line 64
    .end local v4    # "latitude":D
    .end local v8    # "longitude":D
    :cond_3
    const/16 v4, 0x3b

    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v5, v6

    .line 65
    .local v5, "semicolon":I
    move v5, v4

    if-gez v4, :cond_4

    .line 66
    return-object v3

    .line 69
    :cond_4
    :try_start_0
    invoke-virtual {v12, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 70
    .local v8, "latitude":D
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v12, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    .local v10, "longitude":D
    nop

    .line 72
    move-wide v14, v8

    move-wide/from16 v16, v10

    .line 77
    .end local v5    # "semicolon":I
    .end local v8    # "latitude":D
    .end local v10    # "longitude":D
    .local v14, "latitude":D
    .local v16, "longitude":D
    :goto_1
    :try_start_1
    new-instance v4, Lcom/google/zxing/client/result/CalendarParsedResult;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v4

    move-object v6, v2

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v23, v12

    move-object v12, v13

    .line 77
    .end local v12    # "geoString":Ljava/lang/String;
    .local v23, "geoString":Ljava/lang/String;
    move-object/from16 v24, v13

    move-object/from16 v13, v22

    .line 77
    .end local v13    # "attendees":[Ljava/lang/String;
    .local v24, "attendees":[Ljava/lang/String;
    :try_start_2
    invoke-direct/range {v5 .. v17}, Lcom/google/zxing/client/result/CalendarParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    .line 87
    :catch_0
    move-exception v0

    goto :goto_2

    .line 87
    .end local v23    # "geoString":Ljava/lang/String;
    .end local v24    # "attendees":[Ljava/lang/String;
    .restart local v12    # "geoString":Ljava/lang/String;
    .restart local v13    # "attendees":[Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    .line 87
    .end local v12    # "geoString":Ljava/lang/String;
    .end local v13    # "attendees":[Ljava/lang/String;
    .restart local v23    # "geoString":Ljava/lang/String;
    .restart local v24    # "attendees":[Ljava/lang/String;
    :goto_2
    move-object v4, v3

    .line 88
    .local v4, "ignored":Ljava/lang/IllegalArgumentException;
    return-object v3

    .line 71
    .end local v4    # "ignored":Ljava/lang/IllegalArgumentException;
    .end local v14    # "latitude":D
    .end local v16    # "longitude":D
    .end local v23    # "geoString":Ljava/lang/String;
    .end local v24    # "attendees":[Ljava/lang/String;
    .restart local v5    # "semicolon":I
    .restart local v12    # "geoString":Ljava/lang/String;
    .restart local v13    # "attendees":[Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    .line 72
    .end local v12    # "geoString":Ljava/lang/String;
    .end local v13    # "attendees":[Ljava/lang/String;
    .restart local v23    # "geoString":Ljava/lang/String;
    .restart local v24    # "attendees":[Ljava/lang/String;
    return-object v3
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VEventResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;

    move-result-object p1

    return-object p1
.end method
