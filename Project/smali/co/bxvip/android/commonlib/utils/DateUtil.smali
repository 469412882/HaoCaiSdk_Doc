.class public final Lco/bxvip/android/commonlib/utils/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0008J\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/utils/DateUtil;",
        "",
        "()V",
        "change",
        "",
        "time",
        "",
        "getDaysByYearMonth",
        "",
        "year",
        "month",
        "timedate",
        "unitFormat",
        "i",
        "android-support"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lco/bxvip/android/commonlib/utils/DateUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lco/bxvip/android/commonlib/utils/DateUtil;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/utils/DateUtil;-><init>()V

    sput-object v0, Lco/bxvip/android/commonlib/utils/DateUtil;->INSTANCE:Lco/bxvip/android/commonlib/utils/DateUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final change(J)Ljava/lang/String;
    .locals 13
    .param p1, "time"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 27
    .local v0, "timeStr":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 28
    .local v1, "hour":J
    const-wide/16 v3, 0x0

    .line 29
    .local v3, "minute":J
    const-wide/16 v5, 0x0

    .line 30
    .local v5, "second":J
    const-wide/16 v7, 0x0

    cmp-long v9, p1, v7

    if-gtz v9, :cond_0

    .line 31
    const-string v7, "00:00:00"

    return-object v7

    .line 33
    :cond_0
    const/16 v7, 0x3c

    int-to-long v7, v7

    div-long v3, p1, v7

    .line 34
    cmp-long v9, v3, v7

    if-gez v9, :cond_1

    .line 35
    rem-long v5, p1, v7

    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Lco/bxvip/android/commonlib/utils/DateUtil;->unitFormat(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Lco/bxvip/android/commonlib/utils/DateUtil;->unitFormat(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Lco/bxvip/android/commonlib/utils/DateUtil;->unitFormat(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    div-long v1, v3, v7

    .line 39
    const/16 v9, 0x63

    int-to-long v9, v9

    cmp-long v11, v1, v9

    if-lez v11, :cond_2

    .line 40
    const-string v7, "99:59:59"

    return-object v7

    .line 41
    :cond_2
    rem-long/2addr v3, v7

    .line 42
    const/16 v9, 0xe10

    int-to-long v9, v9

    mul-long v9, v9, v1

    sub-long v11, p1, v9

    mul-long v7, v7, v3

    sub-long v5, v11, v7

    .line 43
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Lco/bxvip/android/commonlib/utils/DateUtil;->unitFormat(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Lco/bxvip/android/commonlib/utils/DateUtil;->unitFormat(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Lco/bxvip/android/commonlib/utils/DateUtil;->unitFormat(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    nop

    .line 45
    nop

    .line 46
    return-object v0
.end method

.method public final getDaysByYearMonth(II)I
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 15
    .local v0, "a":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 16
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 17
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 18
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->roll(II)V

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final timedate(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "time"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "time"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "sdr":Ljava/text/SimpleDateFormat;
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 78
    .local v1, "lcc":J
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 79
    .local v3, "i":I
    new-instance v4, Ljava/util/Date;

    int-to-long v5, v3

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sdr.format(Date(i * 1000L))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4
.end method

.method public final unitFormat(I)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, "retStr":Ljava/lang/String;
    if-ltz p1, :cond_0

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0
.end method

.method public final unitFormat(J)Ljava/lang/String;
    .locals 4
    .param p1, "i"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "retStr":Ljava/lang/String;
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const/16 v1, 0xa

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0
.end method
