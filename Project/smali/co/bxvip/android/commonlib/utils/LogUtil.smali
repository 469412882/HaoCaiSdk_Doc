.class public Lco/bxvip/android/commonlib/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static LOG_MAXLENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/16 v0, 0x7d0

    sput v0, Lco/bxvip/android/commonlib/utils/LogUtil;->LOG_MAXLENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 16
    .local v0, "strLength":I
    const/4 v1, 0x0

    .line 17
    .local v1, "start":I
    sget v2, Lco/bxvip/android/commonlib/utils/LogUtil;->LOG_MAXLENGTH:I

    .line 18
    .local v2, "end":I
    const/4 v3, 0x0

    .line 18
    .local v3, "i":I
    :goto_0
    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    .line 20
    if-le v0, v2, :cond_0

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    move v1, v2

    .line 23
    sget v4, Lco/bxvip/android/commonlib/utils/LogUtil;->LOG_MAXLENGTH:I

    add-int/2addr v2, v4

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    nop

    .line 29
    .end local v3    # "i":I
    :cond_1
    return-void
.end method
