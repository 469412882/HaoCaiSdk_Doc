.class public Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "expected"    # C

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 45
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z

    .line 56
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 8
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z
    .param p2, "tz"    # Ljava/util/TimeZone;

    .line 68
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 69
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 72
    const-string v1, "yyyy-MM-ddThh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 73
    .local v1, "capacity":I
    if-eqz p1, :cond_0

    const-string v2, ".sss"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 74
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Z"

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_2

    :cond_1
    const-string v2, "+hh:mm"

    goto :goto_1

    :goto_2
    add-int/2addr v1, v2

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .local v2, "formatted":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const-string v5, "yyyy"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 78
    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    const-string v3, "MM"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v5, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v5, "dd"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 82
    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v5, "hh"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 84
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-string v6, "mm"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v5, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-string v6, "ss"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v5, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 88
    if-eqz p1, :cond_2

    .line 89
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    const/16 v5, 0xe

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-string v6, "sss"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v5, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 93
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 94
    .local v5, "offset":I
    if-eqz v5, :cond_4

    .line 95
    const v6, 0xea60

    div-int v7, v5, v6

    div-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 96
    .local v7, "hours":I
    div-int v6, v5, v6

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 97
    .local v6, "minutes":I
    if-gez v5, :cond_3

    goto :goto_3

    :cond_3
    const/16 v4, 0x2b

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    const-string v4, "hh"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v7, v4}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    const-string v3, "mm"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v6, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 101
    .end local v6    # "minutes":I
    .end local v7    # "hours":I
    goto :goto_4

    .line 102
    :cond_4
    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 345
    move v0, p1

    .line 345
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 346
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 347
    .local v1, "c":C
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 345
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .restart local v1    # "c":C
    :cond_1
    :goto_1
    return v0

    .line 349
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I
    .param p2, "length"    # I

    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "strValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    .line 335
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 336
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 338
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 28
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 124
    move-object/from16 v2, p1

    const/4 v3, 0x0

    move-object v4, v3

    .line 126
    .local v4, "fail":Ljava/lang/Exception;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .line 129
    .local v5, "offset":I
    add-int/lit8 v6, v5, 0x4

    .line 129
    .local v6, "offset":I
    invoke-static {v1, v5, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v5

    .line 130
    .local v5, "year":I
    const/16 v7, 0x2d

    invoke-static {v1, v6, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 131
    add-int/lit8 v6, v6, 0x1

    .line 135
    :cond_0
    add-int/lit8 v8, v6, 0x2

    .line 135
    .local v8, "offset":I
    invoke-static {v1, v6, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    .line 136
    .local v6, "month":I
    invoke-static {v1, v8, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 137
    add-int/lit8 v8, v8, 0x1

    .line 141
    :cond_1
    add-int/lit8 v9, v8, 0x2

    .line 141
    .local v9, "offset":I
    invoke-static {v1, v8, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v8

    .line 143
    .local v8, "day":I
    const/4 v10, 0x0

    .line 144
    .local v10, "hour":I
    const/4 v11, 0x0

    .line 145
    .local v11, "minutes":I
    const/4 v12, 0x0

    .line 146
    .local v12, "seconds":I
    const/4 v13, 0x0

    .line 149
    .local v13, "milliseconds":I
    const/16 v14, 0x54

    invoke-static {v1, v9, v14}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    .line 151
    .local v14, "hasT":Z
    if-nez v14, :cond_2

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v15, v9, :cond_2

    .line 152
    new-instance v7, Ljava/util/GregorianCalendar;

    add-int/lit8 v15, v6, -0x1

    invoke-direct {v7, v5, v15, v8}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 154
    .local v7, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 155
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    return-object v15

    .line 266
    .end local v5    # "year":I
    .end local v6    # "month":I
    .end local v7    # "calendar":Ljava/util/Calendar;
    .end local v8    # "day":I
    .end local v9    # "offset":I
    .end local v10    # "hour":I
    .end local v11    # "minutes":I
    .end local v12    # "seconds":I
    .end local v13    # "milliseconds":I
    .end local v14    # "hasT":Z
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v21, v4

    goto/16 :goto_7

    .line 264
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object/from16 v21, v4

    goto/16 :goto_8

    .line 262
    :catch_2
    move-exception v0

    move-object v3, v0

    move-object/from16 v21, v4

    goto/16 :goto_9

    .line 158
    .restart local v5    # "year":I
    .restart local v6    # "month":I
    .restart local v8    # "day":I
    .restart local v9    # "offset":I
    .restart local v10    # "hour":I
    .restart local v11    # "minutes":I
    .restart local v12    # "seconds":I
    .restart local v13    # "milliseconds":I
    .restart local v14    # "hasT":Z
    :cond_2
    const/16 v3, 0x5a

    if-eqz v14, :cond_7

    .line 161
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v9, 0x2

    .line 161
    .local v7, "offset":I
    invoke-static {v1, v9, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v9

    .line 161
    .end local v9    # "offset":I
    move v10, v9

    .line 162
    const/16 v9, 0x3a

    invoke-static {v1, v7, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 163
    add-int/lit8 v7, v7, 0x1

    .line 166
    :cond_3
    add-int/lit8 v15, v7, 0x2

    .line 166
    .local v15, "offset":I
    invoke-static {v1, v7, v15}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    .line 166
    .end local v7    # "offset":I
    move v11, v7

    .line 167
    invoke-static {v1, v15, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 168
    add-int/lit8 v15, v15, 0x1

    .line 171
    .end local v15    # "offset":I
    .restart local v9    # "offset":I
    :cond_4
    move v9, v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_7

    .line 172
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 173
    .local v7, "c":C
    if-eq v7, v3, :cond_7

    const/16 v15, 0x2b

    if-eq v7, v15, :cond_7

    const/16 v15, 0x2d

    if-eq v7, v15, :cond_7

    .line 174
    add-int/lit8 v15, v9, 0x2

    .line 174
    .restart local v15    # "offset":I
    invoke-static {v1, v9, v15}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v9

    .line 175
    .end local v12    # "seconds":I
    .local v9, "seconds":I
    const/16 v12, 0x3b

    if-le v9, v12, :cond_5

    const/16 v12, 0x3f

    if-ge v9, v12, :cond_5

    const/16 v9, 0x3b

    .line 177
    .end local v9    # "seconds":I
    .restart local v12    # "seconds":I
    :cond_5
    move v12, v9

    const/16 v9, 0x2e

    invoke-static {v1, v15, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 178
    add-int/lit8 v15, v15, 0x1

    .line 179
    add-int/lit8 v9, v15, 0x1

    invoke-static {v1, v9}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v9

    .line 180
    .local v9, "endOffset":I
    add-int/lit8 v3, v15, 0x3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 181
    .local v3, "parseEndOffset":I
    invoke-static {v1, v15, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v18
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    .local v18, "fraction":I
    sub-int v19, v3, v15

    packed-switch v19, :pswitch_data_0

    .line 191
    move/from16 v13, v18

    goto :goto_0

    .line 185
    :pswitch_0
    mul-int/lit8 v13, v18, 0xa

    .line 186
    goto :goto_0

    .line 188
    :pswitch_1
    mul-int/lit8 v13, v18, 0x64

    .line 189
    nop

    .line 193
    :goto_0
    nop

    .line 193
    .end local v3    # "parseEndOffset":I
    .end local v7    # "c":C
    .end local v15    # "offset":I
    .end local v18    # "fraction":I
    .local v9, "offset":I
    goto :goto_1

    .line 200
    .end local v9    # "offset":I
    .restart local v15    # "offset":I
    :cond_6
    move v9, v15

    .line 200
    .end local v15    # "offset":I
    .restart local v9    # "offset":I
    :cond_7
    :goto_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6

    if-gt v3, v9, :cond_8

    .line 201
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v7, "No time zone indicator"

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 204
    :cond_8
    const/4 v3, 0x0

    .line 205
    .local v3, "timezone":Ljava/util/TimeZone;
    :try_start_4
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6

    .line 207
    .local v7, "timezoneIndicator":C
    const/16 v15, 0x5a

    if-ne v7, v15, :cond_9

    .line 208
    :try_start_5
    sget-object v15, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v3, v15

    .line 209
    const/4 v15, 0x1

    add-int/2addr v9, v15

    .line 248
    move-object/from16 v21, v4

    move/from16 v24, v7

    goto/16 :goto_6

    .line 210
    :cond_9
    const/16 v15, 0x2b

    if-eq v7, v15, :cond_b

    const/16 v15, 0x2d

    if-ne v7, v15, :cond_a

    .line 211
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    goto :goto_2

    .line 245
    :cond_a
    :try_start_6
    new-instance v15, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v20, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .line 245
    .end local v3    # "timezone":Ljava/util/TimeZone;
    .local v20, "timezone":Ljava/util/TimeZone;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    move-object/from16 v21, v4

    :try_start_7
    const-string v4, "Invalid time zone indicator \'"

    .line 245
    .end local v4    # "fail":Ljava/lang/Exception;
    .local v21, "fail":Ljava/lang/Exception;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 211
    .end local v20    # "timezone":Ljava/util/TimeZone;
    .end local v21    # "fail":Ljava/lang/Exception;
    .restart local v3    # "timezone":Ljava/util/TimeZone;
    .restart local v4    # "fail":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 211
    .end local v3    # "timezone":Ljava/util/TimeZone;
    .end local v4    # "fail":Ljava/lang/Exception;
    .restart local v20    # "timezone":Ljava/util/TimeZone;
    .restart local v21    # "fail":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "timezoneOffset":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v15, 0x5

    if-lt v4, v15, :cond_c

    move-object v4, v3

    goto :goto_3

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "00"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v3, v4

    .line 216
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v9, v4

    .line 218
    const-string v4, "+0000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "+00:00"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 219
    move-object/from16 v23, v3

    move/from16 v24, v7

    move/from16 v25, v9

    goto :goto_4

    .line 225
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GMT"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "timezoneId":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    .line 230
    .end local v20    # "timezone":Ljava/util/TimeZone;
    .local v15, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v22, v17

    .line 231
    .local v22, "act":Ljava/lang/String;
    move-object/from16 v23, v3

    move-object/from16 v3, v22

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 231
    .end local v22    # "act":Ljava/lang/String;
    .local v3, "act":Ljava/lang/String;
    .local v23, "timezoneOffset":Ljava/lang/String;
    if-nez v17, :cond_e

    .line 237
    move/from16 v24, v7

    const-string v7, ":"

    .line 237
    .end local v7    # "timezoneIndicator":C
    .local v24, "timezoneIndicator":C
    move/from16 v25, v9

    const-string v9, ""

    .line 237
    .end local v9    # "offset":I
    .local v25, "offset":I
    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, "cleaned":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 239
    new-instance v9, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v26, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .line 239
    .end local v3    # "act":Ljava/lang/String;
    .local v26, "act":Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v7

    const-string v7, "Mismatching time zone indicator: "

    .line 239
    .end local v7    # "cleaned":Ljava/lang/String;
    .local v27, "cleaned":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " given, resolves to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 244
    .end local v4    # "timezoneId":Ljava/lang/String;
    .end local v23    # "timezoneOffset":Ljava/lang/String;
    .end local v24    # "timezoneIndicator":C
    .end local v25    # "offset":I
    .end local v26    # "act":Ljava/lang/String;
    .end local v27    # "cleaned":Ljava/lang/String;
    .local v7, "timezoneIndicator":C
    .restart local v9    # "offset":I
    :cond_e
    move/from16 v24, v7

    move/from16 v25, v9

    .line 244
    .end local v7    # "timezoneIndicator":C
    .end local v9    # "offset":I
    .restart local v24    # "timezoneIndicator":C
    .restart local v25    # "offset":I
    :cond_f
    move-object v3, v15

    goto :goto_5

    .line 219
    .end local v15    # "timezone":Ljava/util/TimeZone;
    .end local v24    # "timezoneIndicator":C
    .end local v25    # "offset":I
    .local v3, "timezoneOffset":Ljava/lang/String;
    .restart local v7    # "timezoneIndicator":C
    .restart local v9    # "offset":I
    .restart local v20    # "timezone":Ljava/util/TimeZone;
    :cond_10
    move-object/from16 v23, v3

    move/from16 v24, v7

    move/from16 v25, v9

    .line 219
    .end local v3    # "timezoneOffset":Ljava/lang/String;
    .end local v7    # "timezoneIndicator":C
    .end local v9    # "offset":I
    .restart local v23    # "timezoneOffset":Ljava/lang/String;
    .restart local v24    # "timezoneIndicator":C
    .restart local v25    # "offset":I
    :goto_4
    sget-object v3, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 244
    .end local v20    # "timezone":Ljava/util/TimeZone;
    .end local v23    # "timezoneOffset":Ljava/lang/String;
    .local v3, "timezone":Ljava/util/TimeZone;
    :goto_5
    nop

    .line 248
    move/from16 v9, v25

    .line 248
    .end local v25    # "offset":I
    .restart local v9    # "offset":I
    :goto_6
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 249
    .local v4, "calendar":Ljava/util/Calendar;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setLenient(Z)V

    .line 250
    const/4 v7, 0x1

    invoke-virtual {v4, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 251
    add-int/lit8 v7, v6, -0x1

    const/4 v15, 0x2

    invoke-virtual {v4, v15, v7}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/4 v7, 0x5

    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v7, 0xb

    invoke-virtual {v4, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v7, 0xc

    invoke-virtual {v4, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 255
    const/16 v7, 0xd

    invoke-virtual {v4, v7, v12}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v7, 0xe

    invoke-virtual {v4, v7, v13}, Ljava/util/Calendar;->set(II)V

    .line 258
    invoke-virtual {v2, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 259
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3

    return-object v7

    .line 266
    .end local v3    # "timezone":Ljava/util/TimeZone;
    .end local v4    # "calendar":Ljava/util/Calendar;
    .end local v5    # "year":I
    .end local v6    # "month":I
    .end local v8    # "day":I
    .end local v9    # "offset":I
    .end local v10    # "hour":I
    .end local v11    # "minutes":I
    .end local v12    # "seconds":I
    .end local v13    # "milliseconds":I
    .end local v14    # "hasT":Z
    .end local v24    # "timezoneIndicator":C
    :catch_3
    move-exception v0

    move-object v3, v0

    goto :goto_7

    .line 264
    :catch_4
    move-exception v0

    move-object v3, v0

    goto :goto_8

    .line 262
    :catch_5
    move-exception v0

    move-object v3, v0

    goto :goto_9

    .line 266
    .end local v21    # "fail":Ljava/lang/Exception;
    .local v4, "fail":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    move-object/from16 v21, v4

    move-object v3, v0

    .line 267
    .end local v4    # "fail":Ljava/lang/Exception;
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    .restart local v21    # "fail":Ljava/lang/Exception;
    :goto_7
    nop

    .line 267
    .end local v21    # "fail":Ljava/lang/Exception;
    .local v3, "fail":Ljava/lang/Exception;
    goto :goto_b

    .line 264
    .end local v3    # "fail":Ljava/lang/Exception;
    .restart local v4    # "fail":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    move-object/from16 v21, v4

    move-object v3, v0

    .line 265
    .end local v4    # "fail":Ljava/lang/Exception;
    .local v3, "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "fail":Ljava/lang/Exception;
    :goto_8
    nop

    .line 265
    .end local v21    # "fail":Ljava/lang/Exception;
    .local v3, "fail":Ljava/lang/Exception;
    goto :goto_a

    .line 262
    .end local v3    # "fail":Ljava/lang/Exception;
    .restart local v4    # "fail":Ljava/lang/Exception;
    :catch_8
    move-exception v0

    move-object/from16 v21, v4

    move-object v3, v0

    .line 263
    .end local v4    # "fail":Ljava/lang/Exception;
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v21    # "fail":Ljava/lang/Exception;
    :goto_9
    nop

    .line 268
    .end local v21    # "fail":Ljava/lang/Exception;
    .local v3, "fail":Ljava/lang/Exception;
    :goto_a
    nop

    .line 269
    :goto_b
    if-nez v1, :cond_11

    const/16 v16, 0x0

    goto :goto_c

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    :goto_c
    move-object/from16 v4, v16

    .line 270
    .local v4, "input":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "msg":Ljava/lang/String;
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 272
    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 274
    :cond_13
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse date ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-direct {v6, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 275
    .local v6, "ex":Ljava/text/ParseException;
    invoke-virtual {v6, v3}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    throw v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 301
    if-ltz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_5

    if-le p1, p2, :cond_0

    goto :goto_1

    .line 305
    :cond_0
    move v0, p1

    .line 306
    .local v0, "i":I
    const/4 v1, 0x0

    .line 308
    .local v1, "result":I
    const/16 v2, 0xa

    if-ge v0, p2, :cond_2

    .line 309
    add-int/lit8 v3, v0, 0x1

    .line 309
    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 309
    .end local v0    # "i":I
    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 310
    .local v0, "digit":I
    if-gez v0, :cond_1

    .line 311
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 313
    :cond_1
    neg-int v1, v0

    .line 315
    .end local v3    # "i":I
    .local v0, "i":I
    :goto_0
    move v0, v3

    :cond_2
    if-ge v0, p2, :cond_4

    .line 316
    add-int/lit8 v3, v0, 0x1

    .line 316
    .restart local v3    # "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 316
    .end local v0    # "i":I
    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 317
    .local v0, "digit":I
    if-gez v0, :cond_3

    .line 318
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    :cond_3
    mul-int/lit8 v1, v1, 0xa

    .line 321
    sub-int/2addr v1, v0

    goto :goto_0

    .line 323
    .end local v3    # "i":I
    .local v0, "i":I
    :cond_4
    neg-int v2, v1

    return v2

    .line 302
    .end local v0    # "i":I
    .end local v1    # "result":I
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
