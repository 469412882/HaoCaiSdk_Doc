.class public final Lco/bxvip/android/commonlib/http/ext/KLog;
.super Ljava/lang/Object;
.source "Ku.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ku.kt\nco/bxvip/android/commonlib/http/ext/KLog\n*L\n1#1,193:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u00060\u0008j\u0002`\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/http/ext/KLog;",
        "",
        "()V",
        "exceptionLog",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "response",
        "",
        "level",
        "",
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
.field public static final INSTANCE:Lco/bxvip/android/commonlib/http/ext/KLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lco/bxvip/android/commonlib/http/ext/KLog;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/http/ext/KLog;-><init>()V

    sput-object v0, Lco/bxvip/android/commonlib/http/ext/KLog;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/KLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic exceptionLog$default(Lco/bxvip/android/commonlib/http/ext/KLog;Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 105
    const-string p3, ""

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, -0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lco/bxvip/android/commonlib/http/ext/KLog;->exceptionLog(Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final exceptionLog(Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;I)V
    .locals 16
    .param p1, "call"    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "response"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "level"    # I

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "e"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "response"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    nop

    .line 107
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v4

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_8

    .line 107
    :cond_0
    const/4 v4, 0x0

    .line 108
    .local v4, "request":Lokhttp3/Request;
    :goto_0
    sget-object v5, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onFailDoLog()Lkotlin/jvm/functions/Function3;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 109
    sget-object v5, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onFailDoLog()Lkotlin/jvm/functions/Function3;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    if-nez v4, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v4, v6, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_5
    sget-object v5, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getTAG()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v5, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getTAG()Ljava/lang/String;

    move-result-object v5

    const-string v6, "----------Start----\u5f02\u5e38-----"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v5, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "| Thread:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    const-string v8, "Thread.currentThread()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v5, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "| Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "requestS":Ljava/lang/String;
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "tag"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v6

    .line 117
    .local v6, "tag":I
    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v6, v7, :cond_7

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v6, -0x1

    if-nez v5, :cond_6

    new-instance v3, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v3, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "}"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 120
    :cond_7
    sget-boolean v7, Lco/bxvip/android/commonlib/http/BuildConfig;->DEBUG:Z

    if-eqz v7, :cond_14

    .line 121
    sget-object v7, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v7}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "| "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    .line 123
    .local v7, "method":Ljava/lang/String;
    :goto_3
    const-string v9, "POST"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_d

    .line 124
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v11

    instance-of v11, v11, Lokhttp3/FormBody;

    if-eqz v11, :cond_d

    .line 126
    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v11

    if-nez v11, :cond_9

    new-instance v3, Lkotlin/TypeCastException;

    const-string v8, "null cannot be cast to non-null type okhttp3.FormBody"

    invoke-direct {v3, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    check-cast v11, Lokhttp3/FormBody;

    .line 127
    .local v11, "body":Lokhttp3/FormBody;
    invoke-virtual {v11}, Lokhttp3/FormBody;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_a

    .line 128
    .local v13, "i":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Lokhttp3/FormBody;->encodedName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Lokhttp3/FormBody;->encodedValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v13, v13, 0x1

    .line 127
    .end local v13    # "i":I
    goto :goto_4

    .line 130
    :cond_a
    move-object v3, v9

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_c

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v9, v3, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 131
    :cond_c
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "| RequestParams:{"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "body":Lokhttp3/FormBody;
    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v3

    move-object v15, v3

    goto :goto_6

    :cond_e
    const/4 v15, 0x0

    :goto_6
    move-object v3, v15

    .line 135
    .local v3, "headers":Lokhttp3/Headers;
    if-eqz v3, :cond_13

    .line 136
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 138
    .local v12, "key":Ljava/lang/String;
    if-eqz v12, :cond_f

    .line 139
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .end local v12    # "key":Ljava/lang/String;
    :cond_f
    goto :goto_7

    .line 142
    :cond_10
    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_11

    const/4 v8, 0x1

    nop

    :cond_11
    if-eqz v8, :cond_12

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 143
    :cond_12
    sget-object v8, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v8}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getTAG()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "| RequestHeaders:{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_13
    sget-object v8, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v8}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getTAG()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "| Response:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v3    # "headers":Lokhttp3/Headers;
    .end local v7    # "method":Ljava/lang/String;
    :cond_14
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getTAG()Ljava/lang/String;

    move-result-object v3

    const-string v7, "----------End----------------"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v4    # "request":Lokhttp3/Request;
    .end local v5    # "requestS":Ljava/lang/String;
    .end local v6    # "tag":I
    goto :goto_9

    .line 149
    :goto_8
    nop

    .line 150
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v4, Lco/bxvip/android/commonlib/http/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_15

    .line 151
    sget-object v4, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v4}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_9
    nop

    .line 153
    return-void
.end method
