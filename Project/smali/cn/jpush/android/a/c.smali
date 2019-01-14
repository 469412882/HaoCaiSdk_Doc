.class public Lcn/jpush/android/a/c;
.super Lcn/jiguang/api/JActionExtra;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcn/jiguang/api/JActionExtra;-><init>()V

    return-void
.end method


# virtual methods
.method public beforLogin(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 21
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 22
    const-string p1, "JPushProtocolAction"

    const-string p2, "context was null"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-object v0

    .line 25
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    const-string p1, "JPushProtocolAction"

    const-string p2, " filed name was empty"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-object v0

    .line 29
    :cond_1
    const-string v1, "platformtype"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 30
    const/16 p3, 0x10

    if-lt p2, p3, :cond_7

    .line 31
    invoke-static {p1}, Lcn/jpush/android/c/i;->a(Landroid/content/Context;)B

    move-result p2

    .line 32
    if-eqz p2, :cond_4

    .line 33
    invoke-static {p1, p2}, Lcn/jpush/android/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    .line 34
    invoke-static {p1, p2}, Lcn/jpush/android/b;->b(Landroid/content/Context;I)Z

    move-result v0

    .line 35
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 41
    or-int/lit8 p2, p2, 0x40

    int-to-byte p2, p2

    .line 43
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 49
    :cond_3
    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 52
    :cond_4
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/jpush/android/c/g;->g(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 56
    or-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 57
    const/16 p3, 0x8

    invoke-static {p1, p3}, Lcn/jpush/android/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {p1, p3}, Lcn/jpush/android/b;->b(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 65
    or-int/lit8 p1, p2, 0x20

    int-to-byte p2, p1

    .line 69
    :cond_5
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 71
    :cond_6
    const-string p2, "platformregid"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 72
    invoke-static {p1}, Lcn/jpush/android/c/i;->a(Landroid/content/Context;)B

    move-result p2

    .line 73
    invoke-static {p1, p2}, Lcn/jpush/android/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :cond_7
    return-object v0
.end method
