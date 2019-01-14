.class public final Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;
.super Ljava/lang/Object;
.source "HttpManager.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/http/HttpManager;->commonRequest(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpManager.kt\nco/bxvip/android/commonlib/http/HttpManager$commonRequest$1\n*L\n1#1,312:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u001c\u0010\t\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "co/bxvip/android/commonlib/http/HttpManager$commonRequest$1",
        "Lokhttp3/Callback;",
        "(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Lkotlin/jvm/internal/Ref$ObjectRef;)V",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
        "lib-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $classOfT:Ljava/lang/Class;

.field final synthetic $fail:Lkotlin/jvm/functions/Function1;

.field final synthetic $formBody:Lokhttp3/FormBody$Builder;

.field final synthetic $headers:Lokhttp3/Headers;

.field final synthetic $maintained:Lkotlin/jvm/functions/Function1;

.field final synthetic $responseData:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $secondUrl:Ljava/lang/String;

.field final synthetic $success:Lkotlin/jvm/functions/Function1;

.field final synthetic $timeout:Lkotlin/jvm/functions/Function0;

.field final synthetic $url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lokhttp3/FormBody$Builder;
    .param p2, "$captured_local_variable$1"    # Ljava/lang/Class;
    .param p3, "$captured_local_variable$2"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$captured_local_variable$3"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$captured_local_variable$4"    # Lkotlin/jvm/functions/Function0;
    .param p6, "$captured_local_variable$5"    # Lkotlin/jvm/functions/Function1;
    .param p7, "$captured_local_variable$6"    # Ljava/lang/String;
    .param p8, "$captured_local_variable$7"    # Ljava/lang/String;
    .param p9, "$captured_local_variable$8"    # Lokhttp3/Headers;
    .param p10, "$captured_local_variable$9"    # Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 173
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$formBody:Lokhttp3/FormBody$Builder;

    iput-object p2, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$classOfT:Ljava/lang/Class;

    iput-object p3, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$success:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$fail:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$timeout:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$maintained:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$url:Ljava/lang/String;

    iput-object p8, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$secondUrl:Ljava/lang/String;

    iput-object p9, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$headers:Lokhttp3/Headers;

    iput-object p10, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$responseData:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 175
    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManager;->get_CountUrlCallBack()Lco/bxvip/android/commonlib/http/CountUrlCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManager;->get_CountUrlCallBack()Lco/bxvip/android/commonlib/http/CountUrlCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/CountUrlCallBack;->get_onFailUrl()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 176
    :cond_1
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKHander()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;

    invoke-direct {v1, p0, p2, p1}, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;-><init>(Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;Ljava/io/IOException;Lokhttp3/Call;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 20
    .param p1, "call"    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "response"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 191
    nop

    .line 192
    const/4 v3, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_7

    .line 192
    :cond_0
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 193
    sget-object v4, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v4}, Lco/bxvip/android/commonlib/http/HttpManager;->get_CountUrlCallBack()Lco/bxvip/android/commonlib/http/CountUrlCallBack;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v4, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v4}, Lco/bxvip/android/commonlib/http/HttpManager;->get_CountUrlCallBack()Lco/bxvip/android/commonlib/http/CountUrlCallBack;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lco/bxvip/android/commonlib/http/CountUrlCallBack;->get_onSucceedUrl()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_2

    invoke-interface/range {p1 .. p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Unit;

    .line 194
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    if-nez v4, :cond_4

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v3

    .line 195
    .local v4, "data":Ljava/lang/String;
    :goto_2
    iget-object v5, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$responseData:Lkotlin/jvm/internal/Ref$ObjectRef;

    if-nez v4, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iput-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 196
    sget-object v5, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKGson()Lcom/google/gson/Gson;

    move-result-object v5

    const-class v6, Lco/bxvip/android/commonlib/http/BaseStringResult;

    invoke-virtual {v5, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/bxvip/android/commonlib/http/BaseStringResult;

    .line 197
    .local v5, "fromJsonB":Lco/bxvip/android/commonlib/http/BaseStringResult;
    const v6, 0x9c40

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/BaseStringResult;->getMsg()I

    move-result v7

    if-ne v6, v7, :cond_9

    .line 198
    sget-object v6, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v6}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onResponse400000()Lkotlin/jvm/functions/Function0;

    move-result-object v3

    nop

    :cond_7
    if-eqz v3, :cond_8

    .line 199
    sget-object v3, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onResponse400000()Lkotlin/jvm/functions/Function0;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Unit;

    .line 201
    :cond_8
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKHander()Landroid/os/Handler;

    move-result-object v3

    new-instance v6, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onResponse$1;

    invoke-direct {v6, v1}, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onResponse$1;-><init>(Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;)V

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void

    .line 207
    :cond_9
    const v6, 0xafc8

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/BaseStringResult;->getMsg()I

    move-result v7

    if-ne v6, v7, :cond_c

    .line 209
    sget-object v6, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v6}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onResponse450000()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    nop

    :cond_a
    if-eqz v3, :cond_b

    .line 210
    sget-object v3, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onResponse450000()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/BaseStringResult;->getData()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Unit;

    .line 212
    :cond_b
    return-void

    .line 216
    :cond_c
    iget-object v6, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$classOfT:Ljava/lang/Class;

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    const-string v3, "java.lang.String"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    :cond_d
    if-nez v3, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 217
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKHander()Landroid/os/Handler;

    move-result-object v3

    new-instance v6, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onResponse$2;

    invoke-direct {v6, v1, v4}, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onResponse$2;-><init>(Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 221
    :cond_f
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKGson()Lcom/google/gson/Gson;

    move-result-object v3

    iget-object v6, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$classOfT:Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 222
    .local v3, "fromJson":Ljava/lang/Object;
    sget-object v6, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v6}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKHander()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onResponse$3;

    invoke-direct {v7, v1, v3}, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onResponse$3;-><init>(Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    .end local v3    # "fromJson":Ljava/lang/Object;
    .end local v4    # "data":Ljava/lang/String;
    .end local v5    # "fromJsonB":Lco/bxvip/android/commonlib/http/BaseStringResult;
    :goto_3
    goto/16 :goto_6

    .line 227
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 228
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-nez v4, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "string":Ljava/lang/String;
    const-string v5, "string"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "<head>"

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v5, v6, v7, v8, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "<body>"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v7, v8, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "<html"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v7, v8, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 231
    sget-boolean v5, Lco/bxvip/android/commonlib/http/BuildConfig;->DEBUG:Z

    if-eqz v5, :cond_12

    .line 232
    sget-object v5, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-static {v5}, Lco/bxvip/android/commonlib/http/HttpManager;->access$getTAG$p(Lco/bxvip/android/commonlib/http/HttpManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "isSuccessful \u4e3a false,\u8bf7\u6c42\u5931\u8d25"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_12
    sget-object v5, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onSwitchUrl()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    nop

    :cond_13
    if-nez v3, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_14
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    sget-object v9, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    iget-object v10, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$formBody:Lokhttp3/FormBody$Builder;

    iget-object v11, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$classOfT:Ljava/lang/Class;

    iget-object v12, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$success:Lkotlin/jvm/functions/Function1;

    iget-object v13, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$fail:Lkotlin/jvm/functions/Function1;

    iget-object v14, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$timeout:Lkotlin/jvm/functions/Function0;

    iget-object v3, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$maintained:Lkotlin/jvm/functions/Function1;

    iget-object v5, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$url:Ljava/lang/String;

    iget-object v6, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$secondUrl:Ljava/lang/String;

    const/16 v18, 0x0

    iget-object v7, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$headers:Lokhttp3/Headers;

    move-object v15, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    invoke-static/range {v9 .. v19}, Lco/bxvip/android/commonlib/http/HttpManager;->access$commonRequest(Lco/bxvip/android/commonlib/http/HttpManager;Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V

    goto :goto_4

    .line 235
    :cond_15
    iget-object v3, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$fail:Lkotlin/jvm/functions/Function1;

    const-string v5, "error:code < 200 or code > 300"

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :goto_4
    nop

    .line 237
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/KLog;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/KLog;

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "error:code < 200 or code > 300"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$responseData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v2, v5, v6, v8}, Lco/bxvip/android/commonlib/http/ext/KLog;->exceptionLog(Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;I)V

    goto :goto_5

    .line 239
    :cond_16
    iget-object v3, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$fail:Lkotlin/jvm/functions/Function1;

    const-string v5, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .end local v4    # "string":Ljava/lang/String;
    :goto_5
    goto :goto_6

    .line 242
    :cond_17
    iget-object v3, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$fail:Lkotlin/jvm/functions/Function1;

    const-string v4, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_6
    nop

    .line 244
    goto :goto_8

    .line 245
    :goto_7
    nop

    .line 246
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v4}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKHander()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onResponse$4;

    invoke-direct {v5, v1, v3}, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onResponse$4;-><init>(Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;Ljava/lang/Exception;)V

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    sget-object v4, Lco/bxvip/android/commonlib/http/ext/KLog;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/KLog;

    iget-object v5, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$responseData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v3, v5, v6}, Lco/bxvip/android/commonlib/http/ext/KLog;->exceptionLog(Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;I)V

    .line 250
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_8
    nop

    .line 251
    return-void
.end method
