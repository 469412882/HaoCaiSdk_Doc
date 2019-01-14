.class public final Lco/bxvip/android/commonlib/http/ext/HttpKt;
.super Ljava/lang/Object;
.source "Http.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http.kt\nco/bxvip/android/commonlib/http/ext/HttpKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,313:1\n57#2:314\n82#2,3:315\n57#2:318\n82#2,3:319\n*E\n*S KotlinDebug\n*F\n+ 1 Http.kt\nco/bxvip/android/commonlib/http/ext/HttpKt\n*L\n284#1:314\n284#1,3:315\n301#1:318\n301#1,3:319\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\n\u001a\u00020\u0006\u001a\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0003\u001a(\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0002\u001a\u001e\u0010\u0012\u001a\u00020\u00132\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0002\u001a\u001c\u0010\u0014\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0003H\u0002\u001a+\u0010\u0017\u001a\u00020\u0006\"\u0004\u0008\u0000\u0010\u00182\u001d\u0010\u0019\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00180\u001a\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007\"@\u0010\u0000\u001a1\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007\u0012\u0004\u0012\u00020\u00060\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001b"
    }
    d2 = {
        "pairs",
        "Lkotlin/Function2;",
        "",
        "",
        "Lkotlin/Function1;",
        "Lco/bxvip/android/commonlib/http/ext/RequestPairs;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "getPairs",
        "()Lkotlin/jvm/functions/Function2;",
        "cancelAllHttpCall",
        "cancelCallByTag",
        "tag",
        "fillRequestForm",
        "Lokhttp3/FormBody;",
        "needCommonParam",
        "",
        "params",
        "fillRequestHeader",
        "Lokhttp3/Headers;",
        "fillUrl",
        "url",
        "subUrl",
        "http",
        "T",
        "init",
        "Lco/bxvip/android/commonlib/http/ext/RequestWrapper;",
        "lib-http"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field private static final pairs:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lco/bxvip/android/commonlib/http/ext/RequestPairs;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/HttpKt$pairs$1;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/HttpKt$pairs$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lco/bxvip/android/commonlib/http/ext/HttpKt;->pairs:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$fillRequestForm(ZLjava/util/Map;)Lokhttp3/FormBody;
    .locals 1
    .param p0, "needCommonParam"    # Z
    .param p1, "params"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->fillRequestForm(ZLjava/util/Map;)Lokhttp3/FormBody;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$fillRequestHeader(Ljava/util/Map;)Lokhttp3/Headers;
    .locals 1
    .param p0, "params"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->fillRequestHeader(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$fillUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "subUrl"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->fillUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final cancelAllHttpCall()V
    .locals 2

    .line 76
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 77
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 76
    .end local v1    # "call":Lokhttp3/Call;
    goto :goto_0

    .line 79
    :cond_0
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 80
    .restart local v1    # "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 79
    .end local v1    # "call":Lokhttp3/Call;
    goto :goto_1

    .line 82
    :cond_1
    return-void
.end method

.method public static final cancelCallByTag(Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 63
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 62
    .end local v1    # "call":Lokhttp3/Call;
    :cond_0
    goto :goto_0

    .line 66
    :cond_1
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 67
    .restart local v1    # "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 66
    .end local v1    # "call":Lokhttp3/Call;
    :cond_2
    goto :goto_1

    .line 70
    :cond_3
    return-void
.end method

.method private static final fillRequestForm(ZLjava/util/Map;)Lokhttp3/FormBody;
    .locals 13
    .param p0, "needCommonParam"    # Z
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/FormBody;"
        }
    .end annotation

    .line 283
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 284
    .local v0, "builder":Lokhttp3/FormBody$Builder;
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v2, p1

    .line 284
    .local v2, "$receiver$iv":Ljava/util/Map;
    const/4 v3, 0x0

    move v4, v3

    .line 314
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 314
    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .line 314
    .local v6, "$receiver$iv$iv":Ljava/util/Map;
    move v7, v3

    .line 315
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 315
    .local v3, "$i$a$1$map":I
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 316
    .local v9, "item$iv$iv":Ljava/util/Map$Entry;
    move-object v10, v9

    .line 284
    .local v10, "it":Ljava/util/Map$Entry;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v11, v12}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v10

    .line 284
    .end local v3    # "$i$a$1$map":I
    .end local v10    # "it":Ljava/util/Map$Entry;
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v9    # "item$iv$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 317
    :cond_0
    nop

    .line 317
    .end local v6    # "$receiver$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$mapTo":I
    move-object v2, v5

    check-cast v2, Ljava/util/List;

    .line 317
    .end local v2    # "$receiver$iv":Ljava/util/Map;
    .end local v4    # "$i$f$map":I
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    goto :goto_1

    .line 285
    :cond_1
    move-object v8, v1

    .line 285
    .local v8, "v":Ljava/lang/String;
    :goto_1
    if-eqz p0, :cond_4

    sget-object v2, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onFormBodyBefore()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 286
    sget-object v2, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onFormBodyBefore()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    nop

    .line 287
    .local v1, "hashMap":Ljava/util/HashMap;
    :cond_3
    if-eqz v1, :cond_4

    .line 288
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 288
    .local v2, "k":Ljava/lang/String;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v8

    .line 288
    .end local v8    # "v":Ljava/lang/String;
    .local v5, "v":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 289
    .end local v5    # "v":Ljava/lang/String;
    .restart local v8    # "v":Ljava/lang/String;
    invoke-virtual {v0, v2, v8}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 288
    goto :goto_3

    .line 293
    .end local v1    # "hashMap":Ljava/util/HashMap;
    .end local v2    # "k":Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    const-string v2, "builder.build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method static bridge synthetic fillRequestForm$default(ZLjava/util/Map;ILjava/lang/Object;)Lokhttp3/FormBody;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    .line 282
    const/4 p0, 0x1

    :cond_0
    invoke-static {p0, p1}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->fillRequestForm(ZLjava/util/Map;)Lokhttp3/FormBody;

    move-result-object p0

    return-object p0
.end method

.method private static final fillRequestHeader(Ljava/util/Map;)Lokhttp3/Headers;
    .locals 13
    .param p0, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    .line 300
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 301
    .local v0, "builder":Lokhttp3/Headers$Builder;
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    move-object v2, p0

    .line 301
    .local v2, "$receiver$iv":Ljava/util/Map;
    const/4 v3, 0x0

    move v4, v3

    .line 318
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 318
    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .line 318
    .local v6, "$receiver$iv$iv":Ljava/util/Map;
    move v7, v3

    .line 319
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 319
    .local v3, "$i$a$1$map":I
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 320
    .local v9, "item$iv$iv":Ljava/util/Map$Entry;
    move-object v10, v9

    .line 301
    .local v10, "it":Ljava/util/Map$Entry;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v11, v12}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v10

    .line 301
    .end local v3    # "$i$a$1$map":I
    .end local v10    # "it":Ljava/util/Map$Entry;
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v9    # "item$iv$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 321
    :cond_0
    nop

    .line 321
    .end local v6    # "$receiver$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$mapTo":I
    move-object v2, v5

    check-cast v2, Ljava/util/List;

    .line 321
    .end local v2    # "$receiver$iv":Ljava/util/Map;
    .end local v4    # "$i$f$map":I
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    goto :goto_1

    .line 302
    :cond_1
    move-object v8, v1

    .line 302
    .local v8, "v":Ljava/lang/String;
    :goto_1
    sget-object v2, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onRequestCommonHeader()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 303
    sget-object v2, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onRequestCommonHeader()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    nop

    .line 304
    .local v1, "hashMap":Ljava/util/HashMap;
    :cond_3
    if-eqz v1, :cond_4

    .line 305
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 305
    .local v2, "k":Ljava/lang/String;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v8

    .line 305
    .end local v8    # "v":Ljava/lang/String;
    .local v5, "v":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 306
    .end local v5    # "v":Ljava/lang/String;
    .restart local v8    # "v":Ljava/lang/String;
    invoke-virtual {v0, v2, v8}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 305
    goto :goto_3

    .line 310
    .end local v1    # "hashMap":Ljava/util/HashMap;
    .end local v2    # "k":Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    const-string v2, "builder.build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final fillUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "subUrl"    # Ljava/lang/String;

    .line 270
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    sget-object v1, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onRequestUrl()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    sget-object v1, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onRequstSecondUrl()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 275
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_3
    return-object v0
.end method

.method static bridge synthetic fillUrl$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 269
    const-string p0, ""

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {p0, p1}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->fillUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPairs()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lco/bxvip/android/commonlib/http/ext/RequestPairs;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 84
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/HttpKt;->pairs:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final http(Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p0, "init"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lco/bxvip/android/commonlib/http/ext/RequestWrapper<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lco/bxvip/android/commonlib/http/NetworkUtil;->Companion:Lco/bxvip/android/commonlib/http/NetworkUtil$Companion;

    sget-object v1, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/http/NetworkUtil$Companion;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u8bf7\u8fde\u63a5\u7f51\u7edc...."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "\u8bf7\u8fde\u63a5\u7f51\u7edc...."

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    return-void

    .line 48
    :cond_0
    new-instance v0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;-><init>()V

    .line 49
    .local v0, "wrap":Lco/bxvip/android/commonlib/http/ext/RequestWrapper;
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->request()Lokhttp3/Request;

    move-result-object v2

    .line 51
    .local v2, "request":Lokhttp3/Request;
    if-nez v2, :cond_1

    .line 52
    sget-object v3, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-string v4, "\u4e0d\u652f\u6301\u8be5\u8bf7\u6c42\u65b9\u5f0f...."

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 53
    return-void

    .line 55
    :cond_1
    invoke-virtual {v0, v2}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->execute(Lokhttp3/Request;)V

    .line 56
    return-void
.end method
