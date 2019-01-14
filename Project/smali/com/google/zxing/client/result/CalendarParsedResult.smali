.class public final Lcom/google/zxing/client/result/CalendarParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "CalendarParsedResult.java"


# static fields
.field private static final DATE_TIME:Ljava/util/regex/Pattern;

.field private static final RFC2445_DURATION:Ljava/util/regex/Pattern;

.field private static final RFC2445_DURATION_FIELD_UNITS:[J


# instance fields
.field private final attendees:[Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final end:Ljava/util/Date;

.field private final endAllDay:Z

.field private final latitude:D

.field private final location:Ljava/lang/String;

.field private final longitude:D

.field private final organizer:Ljava/lang/String;

.field private final start:Ljava/util/Date;

.field private final startAllDay:Z

.field private final summary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION:Ljava/util/regex/Pattern;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION_FIELD_UNITS:[J

    .line 48
    const-string v0, "[0-9]{8}(T[0-9]{6}Z?)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_TIME:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 8
        0x240c8400
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 14
    .param p1, "summary"    # Ljava/lang/String;
    .param p2, "startString"    # Ljava/lang/String;
    .param p3, "endString"    # Ljava/lang/String;
    .param p4, "durationString"    # Ljava/lang/String;
    .param p5, "location"    # Ljava/lang/String;
    .param p6, "organizer"    # Ljava/lang/String;
    .param p7, "attendees"    # [Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "latitude"    # D
    .param p11, "longitude"    # D

    move-object v1, p0

    .line 72
    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {v1, v2}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 73
    move-object v2, p1

    iput-object v2, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    .line 76
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->start:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    nop

    .line 81
    if-nez p3, :cond_1

    .line 82
    invoke-static/range {p4 .. p4}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDurationMS(Ljava/lang/CharSequence;)J

    move-result-wide v3

    .line 83
    .local v3, "durationMS":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/Date;

    iget-object v6, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->start:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    add-long v8, v6, v3

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v5, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/util/Date;

    .line 84
    .end local v3    # "durationMS":J
    goto :goto_1

    .line 86
    :cond_1
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    nop

    .line 92
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v3, v6, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    .line 93
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_3

    const/4 v4, 0x1

    nop

    :cond_3
    iput-boolean v4, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    .line 95
    move-object/from16 v3, p5

    iput-object v3, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    .line 96
    move-object/from16 v4, p6

    iput-object v4, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    .line 97
    move-object/from16 v5, p7

    iput-object v5, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    .line 98
    move-object/from16 v6, p8

    iput-object v6, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    .line 99
    move-wide/from16 v7, p9

    iput-wide v7, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    .line 100
    move-wide/from16 v9, p11

    iput-wide v9, v1, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    .line 101
    return-void

    .line 87
    :catch_0
    move-exception v0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    move-object v11, v0

    .line 88
    .local v11, "pe":Ljava/text/ParseException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 77
    .end local v11    # "pe":Ljava/text/ParseException;
    :catch_1
    move-exception v0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    move-object v11, v0

    .line 78
    .restart local v11    # "pe":Ljava/text/ParseException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method private static buildDateFormat()Ljava/text/DateFormat;
    .locals 4

    const/4 v0, 0x0

    .line 237
    .local v0, "format":Ljava/text/DateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 241
    move-object v0, v1

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 242
    return-object v0
.end method

.method private static buildDateTimeFormat()Ljava/text/DateFormat;
    .locals 3

    .line 246
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static format(ZLjava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "allDay"    # Z
    .param p1, "date"    # Ljava/util/Date;

    .line 209
    if-nez p1, :cond_0

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_0
    const/4 v0, 0x2

    if-eqz p0, :cond_1

    .line 213
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_1
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    .line 215
    :goto_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 10
    .param p0, "when"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/text/ParseException;

    invoke-direct {v0, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 186
    invoke-static {}, Lcom/google/zxing/client/result/CalendarParsedResult;->buildDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 190
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_2

    .line 191
    invoke-static {}, Lcom/google/zxing/client/result/CalendarParsedResult;->buildDateTimeFormat()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 192
    .local v1, "date":Ljava/util/Date;
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 193
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    .line 195
    .local v6, "milliseconds":J
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v8, v0

    add-long v6, v4, v8

    .line 198
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 199
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v4, v0

    add-long v8, v6, v4

    .line 200
    .end local v6    # "milliseconds":J
    .local v8, "milliseconds":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 201
    .end local v1    # "date":Ljava/util/Date;
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v8    # "milliseconds":J
    .local v0, "date":Ljava/util/Date;
    goto :goto_0

    .line 202
    .end local v0    # "date":Ljava/util/Date;
    :cond_2
    invoke-static {}, Lcom/google/zxing/client/result/CalendarParsedResult;->buildDateTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 204
    .restart local v0    # "date":Ljava/util/Date;
    :goto_0
    return-object v0
.end method

.method private static parseDurationMS(Ljava/lang/CharSequence;)J
    .locals 10
    .param p0, "durationString"    # Ljava/lang/CharSequence;

    .line 219
    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    .line 220
    return-wide v0

    .line 222
    :cond_0
    sget-object v2, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 223
    .local v4, "m":Ljava/util/regex/Matcher;
    move-object v4, v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    return-wide v0

    .line 226
    :cond_1
    const-wide/16 v0, 0x0

    .line 227
    .local v0, "durationMS":J
    const/4 v2, 0x0

    .line 227
    .local v2, "i":I
    .local v3, "fieldValue":Ljava/lang/String;
    :goto_0
    sget-object v5, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION_FIELD_UNITS:[J

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 228
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    move-object v3, v5

    if-eqz v5, :cond_2

    .line 230
    sget-object v5, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION_FIELD_UNITS:[J

    aget-wide v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v8, v5

    mul-long v6, v6, v8

    add-long v8, v0, v6

    .line 227
    .end local v0    # "durationMS":J
    .end local v3    # "fieldValue":Ljava/lang/String;
    .local v8, "durationMS":J
    move-wide v0, v8

    .line 227
    .end local v8    # "durationMS":J
    .restart local v0    # "durationMS":J
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "i":I
    :cond_3
    return-wide v0
.end method


# virtual methods
.method public getAttendees()[Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 164
    iget-boolean v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    iget-object v2, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:Ljava/util/Date;

    invoke-static {v1, v2}, Lcom/google/zxing/client/result/CalendarParsedResult;->format(ZLjava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 165
    iget-boolean v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    iget-object v2, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/util/Date;

    invoke-static {v1, v2}, Lcom/google/zxing/client/result/CalendarParsedResult;->format(ZLjava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 166
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 167
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 168
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 169
    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEnd()Ljava/util/Date;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:Ljava/util/Date;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    return-wide v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/util/Date;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:Ljava/util/Date;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public isEndAllDay()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    return v0
.end method

.method public isStartAllDay()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    return v0
.end method
