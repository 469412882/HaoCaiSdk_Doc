.class public final Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;
.super Ljava/lang/Object;
.source "Ku.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J:\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;",
        "",
        "()V",
        "unifiedError",
        "",
        "failCode",
        "Lkotlin/Function1;",
        "",
        "e",
        "",
        "needTry",
        "",
        "tryCode",
        "Lkotlin/Function0;",
        "lib-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;-><init>()V

    sput-object v0, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic unifiedError$default(Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 157
    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->unifiedError(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final unifiedError(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "failCode"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "needTry"    # Z
    .param p4, "tryCode"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "failCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tryCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    nop

    .line 159
    instance-of v0, p2, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_2

    .line 160
    :goto_0
    if-eqz p3, :cond_1

    .line 161
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    .line 162
    :cond_1
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    new-instance v1, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil$unifiedError$1;

    invoke-direct {v1, p1}, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil$unifiedError$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->post(Lkotlin/jvm/functions/Function0;)V

    .line 163
    :goto_1
    goto :goto_6

    .line 165
    :cond_2
    instance-of v0, p2, Ljava/net/ConnectException;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    instance-of v0, p2, Ljava/net/SocketException;

    if-eqz v0, :cond_6

    .line 166
    :goto_2
    if-eqz p3, :cond_5

    .line 167
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_3

    .line 168
    :cond_5
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    new-instance v1, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil$unifiedError$2;

    invoke-direct {v1, p1}, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil$unifiedError$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->post(Lkotlin/jvm/functions/Function0;)V

    .line 171
    :goto_3
    goto :goto_6

    .line 173
    :cond_6
    instance-of v0, p2, Ljava/lang/NumberFormatException;

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    instance-of v0, p2, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_9

    .line 174
    :goto_4
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    new-instance v1, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil$unifiedError$3;

    invoke-direct {v1, p1}, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil$unifiedError$3;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->post(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    .line 178
    :cond_9
    instance-of v0, p2, Lcom/google/gson/JsonSyntaxException;

    if-eqz v0, :cond_b

    .line 179
    if-eqz p3, :cond_a

    .line 180
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_5

    .line 181
    :cond_a
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    new-instance v1, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil$unifiedError$4;

    invoke-direct {v1, p1}, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil$unifiedError$4;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->post(Lkotlin/jvm/functions/Function0;)V

    .line 184
    :goto_5
    goto :goto_6

    .line 187
    :cond_b
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    new-instance v1, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil$unifiedError$5;

    invoke-direct {v1, p1}, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil$unifiedError$5;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->post(Lkotlin/jvm/functions/Function0;)V

    .line 191
    :goto_6
    nop

    .line 192
    return-void
.end method
