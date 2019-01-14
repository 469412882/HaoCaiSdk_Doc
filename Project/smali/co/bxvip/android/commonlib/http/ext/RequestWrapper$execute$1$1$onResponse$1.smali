.class final Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;
.super Ljava/lang/Object;
.source "Http.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http.kt\nco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1\n*L\n1#1,313:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $call:Lokhttp3/Call;

.field final synthetic $response:Lokhttp3/Response;

.field final synthetic this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;


# direct methods
.method constructor <init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;Lokhttp3/Response;Lokhttp3/Call;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    iput-object p2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->$response:Lokhttp3/Response;

    iput-object p3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->$call:Lokhttp3/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 169
    new-instance v0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$retryCode$1;

    invoke-direct {v0, p0}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$retryCode$1;-><init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 180
    .local v0, "retryCode":Lkotlin/jvm/functions/Function1;
    nop

    .line 181
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->$response:Lokhttp3/Response;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 182
    sget-object v2, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/HttpManager;->get_CountUrlCallBack()Lco/bxvip/android/commonlib/http/CountUrlCallBack;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/HttpManager;->get_CountUrlCallBack()Lco/bxvip/android/commonlib/http/CountUrlCallBack;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/CountUrlCallBack;->get_onSucceedUrl()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->$call:Lokhttp3/Call;

    invoke-interface {v4}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Unit;

    .line 183
    :cond_2
    iget-object v2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->$response:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v2, :cond_3

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    :cond_4
    move-object v2, v3

    .line 184
    .local v2, "data":Ljava/lang/String;
    nop

    .line 185
    iget-object v3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    iget-object v3, v3, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;

    iget-object v3, v3, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->getUseDefaultResultBean()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 187
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKGson()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lco/bxvip/android/commonlib/http/BaseStringResult;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/bxvip/android/commonlib/http/BaseStringResult;

    .line 188
    .local v3, "fromJsonB":Lco/bxvip/android/commonlib/http/BaseStringResult;
    nop

    .line 189
    const v4, 0x9c40

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/BaseStringResult;->getMsg()I

    move-result v5

    if-ne v4, v5, :cond_5

    sget-object v4, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v4}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKHander()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$1;

    invoke-direct {v5, p0}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$1;-><init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;)V

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 195
    :cond_5
    const v4, 0xafc8

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/BaseStringResult;->getMsg()I

    move-result v5

    if-ne v4, v5, :cond_6

    sget-object v4, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v4}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKHander()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$2;

    invoke-direct {v5, v3}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$2;-><init>(Lco/bxvip/android/commonlib/http/BaseStringResult;)V

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 201
    :cond_6
    iget-object v4, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    iget-object v4, v4, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;

    iget-object v4, v4, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    invoke-virtual {v4}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->getClassOfT()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.String"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    new-instance v5, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$3;

    invoke-direct {v5, p0, v2}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$3;-><init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;Ljava/lang/String;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v4, v5}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->post(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 205
    :cond_7
    sget-object v4, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v4}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKGson()Lcom/google/gson/Gson;

    move-result-object v4

    iget-object v5, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    iget-object v5, v5, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;

    iget-object v5, v5, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->getClassOfT()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 206
    .local v4, "fromJson":Ljava/lang/Object;
    sget-object v5, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    new-instance v6, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$4;

    invoke-direct {v6, p0, v4}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$4;-><init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;Ljava/lang/Object;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v6}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->post(Lkotlin/jvm/functions/Function0;)V

    .line 210
    .end local v3    # "fromJsonB":Lco/bxvip/android/commonlib/http/BaseStringResult;
    .end local v4    # "fromJson":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 212
    :cond_8
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    new-instance v4, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$5;

    invoke-direct {v4, p0, v2}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$5;-><init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;Ljava/lang/String;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v4}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->post(Lkotlin/jvm/functions/Function0;)V

    .line 215
    .end local v2    # "data":Ljava/lang/String;
    :goto_2
    goto/16 :goto_5

    .line 217
    :cond_9
    nop

    .line 218
    iget-object v2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->$response:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_d

    .line 219
    iget-object v2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->$response:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "string":Ljava/lang/String;
    nop

    .line 221
    nop

    .line 222
    nop

    .line 223
    nop

    .line 221
    const-string v5, "string"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "<html"

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    invoke-static {v5, v6, v4, v7, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 222
    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "<body"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v4, v7, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 223
    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "<head"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v4, v7, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_3

    .line 225
    :cond_b
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;

    iget-object v5, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    iget-object v5, v5, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;

    iget-object v5, v5, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    invoke-virtual {v5}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->get_fail$lib_http()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    new-instance v6, Ljava/net/ConnectException;

    const-string v7, "error:code < 200 or code > 300"

    invoke-direct {v6, v7}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    sget-object v7, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$7;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$7;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v5, v6, v4, v7}, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->unifiedError(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;)V

    .line 225
    .end local v2    # "string":Ljava/lang/String;
    goto :goto_4

    .line 224
    .restart local v2    # "string":Ljava/lang/String;
    :cond_c
    :goto_3
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;

    iget-object v4, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    iget-object v4, v4, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;

    iget-object v4, v4, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    invoke-virtual {v4}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->get_fail$lib_http()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    const-string v6, "\u975ejson\u6570\u636e"

    invoke-direct {v5, v6}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    new-instance v6, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$6;

    invoke-direct {v6, v0}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$6;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v4, v5, v1, v6}, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->unifiedError(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;)V

    .line 226
    .end local v2    # "string":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 228
    :cond_d
    sget-object v2, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;

    iget-object v3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    iget-object v3, v3, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;

    iget-object v3, v3, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->get_fail$lib_http()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    sget-object v6, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$8;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$8;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v3, v5, v4, v6}, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->unifiedError(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_5
    nop

    .line 230
    goto :goto_6

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;

    iget-object v4, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    iget-object v4, v4, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;

    iget-object v4, v4, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    invoke-virtual {v4}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->get_fail$lib_http()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    new-instance v6, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$9;

    invoke-direct {v6, v0, v2}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$9;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v4, v5, v1, v6}, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->unifiedError(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;)V

    .line 235
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/KLog;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/KLog;

    iget-object v4, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->$call:Lokhttp3/Call;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v5, v2

    invoke-static/range {v3 .. v9}, Lco/bxvip/android/commonlib/http/ext/KLog;->exceptionLog$default(Lco/bxvip/android/commonlib/http/ext/KLog;Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;IILjava/lang/Object;)V

    .line 236
    .end local v0    # "retryCode":Lkotlin/jvm/functions/Function1;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6
    nop

    .line 237
    return-void
.end method
