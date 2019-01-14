.class public final Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;
.super Ljava/lang/Object;
.source "LogInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogInterceptor.kt\nco/bxvip/android/commonlib/http/intercepter/LogInterceptor\n*L\n1#1,58:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0017\u00a8\u0006\u0008"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;",
        "Lokhttp3/Interceptor;",
        "()V",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "Companion",
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
.field public static final Companion:Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;

.field private static TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;->Companion:Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;

    .line 55
    const-string v0, "LogInterceptor"

    sput-object v0, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    sget-object v0, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setTAG$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 16
    sput-object p0, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 23
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "chain"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 21
    .local v1, "request":Lokhttp3/Request;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 22
    .local v2, "startTime":J
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-interface {v0, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v4

    .line 23
    .local v4, "response":Lokhttp3/Response;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 24
    .local v5, "endTime":J
    sub-long v7, v5, v2

    .line 25
    .local v7, "duration":J
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    if-nez v9, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v9}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v9

    .line 26
    .local v9, "mediaType":Lokhttp3/MediaType;
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v10

    if-nez v10, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v10}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v10

    .line 27
    .local v10, "content":Ljava/lang/String;
    sget-boolean v11, Lco/bxvip/android/commonlib/http/BuildConfig;->DEBUG:Z

    if-eqz v11, :cond_2

    sget-object v11, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;->Companion:Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;

    invoke-virtual {v11}, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;->getTAG()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\n"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_2
    sget-boolean v11, Lco/bxvip/android/commonlib/http/BuildConfig;->DEBUG:Z

    if-eqz v11, :cond_3

    sget-object v11, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;->Companion:Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;

    invoke-virtual {v11}, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;->getTAG()Ljava/lang/String;

    move-result-object v11

    const-string v12, "----------Start----------------"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_3
    invoke-virtual {v1}, Lokhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v11

    .line 30
    .local v11, "requestS":Ljava/lang/String;
    const-string v12, "requestS"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v11

    check-cast v13, Ljava/lang/CharSequence;

    const-string v14, "tag"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v12

    .line 31
    .local v12, "tag":I
    const/4 v13, -0x1

    const/4 v14, 0x0

    if-eq v12, v13, :cond_4

    .line 32
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v15, v12, -0x2

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const-string v14, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "}"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 34
    :cond_4
    sget-boolean v13, Lco/bxvip/android/commonlib/http/BuildConfig;->DEBUG:Z

    if-eqz v13, :cond_5

    sget-object v13, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;->Companion:Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;

    invoke-virtual {v13}, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;->getTAG()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "| "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_5
    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v13

    .line 36
    .local v13, "method":Ljava/lang/String;
    const-string v14, "POST"

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 37
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v14, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v15

    instance-of v15, v15, Lokhttp3/FormBody;

    if-eqz v15, :cond_b

    .line 39
    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v15

    check-cast v15, Lokhttp3/FormBody;

    .line 40
    .local v15, "body":Lokhttp3/FormBody;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lokhttp3/FormBody;->size()I

    move-result v16

    move/from16 v0, v16

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v19, v1

    const/4 v1, 0x0

    .line 40
    .end local v1    # "request":Lokhttp3/Request;
    .local v19, "request":Lokhttp3/Request;
    :goto_1
    if-ge v1, v0, :cond_8

    .line 41
    .local v1, "i":I
    if-nez v15, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    move/from16 v20, v0

    invoke-virtual {v15, v1}, Lokhttp3/FormBody;->encodedName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Lokhttp3/FormBody;->encodedValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 40
    .end local v1    # "i":I
    move/from16 v0, v20

    goto :goto_1

    .line 43
    :cond_8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 44
    :cond_9
    sget-boolean v0, Lco/bxvip/android/commonlib/http/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_a

    sget-object v0, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;->Companion:Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v21, v2

    const-string v2, "| RequestParams:{"

    .line 44
    .end local v2    # "startTime":J
    .local v21, "startTime":J
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "body":Lokhttp3/FormBody;
    goto :goto_2

    .line 47
    .end local v21    # "startTime":J
    .restart local v2    # "startTime":J
    :cond_a
    move-wide/from16 v21, v2

    .line 47
    .end local v2    # "startTime":J
    .restart local v21    # "startTime":J
    goto :goto_2

    .line 47
    .end local v19    # "request":Lokhttp3/Request;
    .end local v21    # "startTime":J
    .local v1, "request":Lokhttp3/Request;
    .restart local v2    # "startTime":J
    :cond_b
    move-object/from16 v19, v1

    move-wide/from16 v21, v2

    .line 47
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "startTime":J
    .restart local v19    # "request":Lokhttp3/Request;
    .restart local v21    # "startTime":J
    :goto_2
    sget-boolean v0, Lco/bxvip/android/commonlib/http/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;->Companion:Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "| Response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_c
    sget-object v0, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;->Companion:Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------End:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u6beb\u79d2----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    nop

    .line 51
    nop

    .line 49
    nop

    .line 50
    nop

    .line 49
    invoke-virtual {v4}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 50
    invoke-static {v9, v10}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    const-string v1, "response.newBuilder()\n  \u2026\n                .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
