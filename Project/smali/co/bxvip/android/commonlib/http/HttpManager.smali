.class public final Lco/bxvip/android/commonlib/http/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpManager.kt\nco/bxvip/android/commonlib/http/HttpManager\n*L\n1#1,312:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0011\u001a\u00020\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0003J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0003J\u009c\u0001\u0010\u001a\u001a\u00020\u001b\"\u0004\u0008\u0000\u0010\u001c2\u0006\u0010\u0016\u001a\u00020\u00172\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u0002H\u001c\u0018\u00010\u001e2\u0014\u0010\u001f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u0001H\u001c\u0012\u0004\u0012\u00020\u001b0 2\u0014\u0010!\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001b0#2\u0014\u0010$\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u0008\u0008\u0002\u0010%\u001a\u00020\u00042\u0008\u0008\u0002\u0010&\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0003Jv\u0010\'\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u00042\u0014\u0010\u001f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u0014\u0010!\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001b0#2\u0014\u0010$\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0007Jv\u0010\'\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u00172\u0014\u0010\u001f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u0014\u0010!\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001b0#2\u0014\u0010$\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0007J\u008c\u0001\u0010(\u001a\u00020\u001b\"\u0004\u0008\u0000\u0010\u001c2\u0006\u0010%\u001a\u00020\u00042\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u0002H\u001c\u0018\u00010\u001e2\u0014\u0010\u001f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u0001H\u001c\u0012\u0004\u0012\u00020\u001b0 2\u0014\u0010!\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001b0#2\u0014\u0010$\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0007J\u008c\u0001\u0010(\u001a\u00020\u001b\"\u0004\u0008\u0000\u0010\u001c2\u0006\u0010\u0016\u001a\u00020\u00172\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u0002H\u001c\u0018\u00010\u001e2\u0014\u0010\u001f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u0001H\u001c\u0012\u0004\u0012\u00020\u001b0 2\u0014\u0010!\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001b0#2\u0014\u0010$\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0007J~\u0010)\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0014\u0010\u001f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u0014\u0010!\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001b0#2\u0014\u0010$\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0007J\u0094\u0001\u0010*\u001a\u00020\u001b\"\u0004\u0008\u0000\u0010\u001c2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u0002H\u001c\u0018\u00010\u001e2\u0014\u0010\u001f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u0001H\u001c\u0012\u0004\u0012\u00020\u001b0 2\u0014\u0010!\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001b0#2\u0014\u0010$\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001b0 2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0007J\u001f\u0010+\u001a\u00020\u001b2\u0017\u0010,\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001b0 \u00a2\u0006\u0002\u0008-J\u001f\u0010.\u001a\u00020\u001b2\u0017\u0010,\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001b0 \u00a2\u0006\u0002\u0008-R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006/"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/http/HttpManager;",
        "",
        "()V",
        "TAG",
        "",
        "_CountUrlCallBack",
        "Lco/bxvip/android/commonlib/http/CountUrlCallBack;",
        "get_CountUrlCallBack",
        "()Lco/bxvip/android/commonlib/http/CountUrlCallBack;",
        "set_CountUrlCallBack",
        "(Lco/bxvip/android/commonlib/http/CountUrlCallBack;)V",
        "_HttpManagerCallBack",
        "Lco/bxvip/android/commonlib/http/HttpManagerCallback;",
        "get_HttpManagerCallBack",
        "()Lco/bxvip/android/commonlib/http/HttpManagerCallback;",
        "set_HttpManagerCallBack",
        "(Lco/bxvip/android/commonlib/http/HttpManagerCallback;)V",
        "commonHeaders",
        "Lokhttp3/Headers;",
        "headers",
        "commonParameter",
        "Lokhttp3/FormBody;",
        "formBody",
        "Lokhttp3/FormBody$Builder;",
        "isCommonParameter",
        "",
        "commonRequest",
        "",
        "T",
        "classOfT",
        "Ljava/lang/Class;",
        "success",
        "Lkotlin/Function1;",
        "fail",
        "timeout",
        "Lkotlin/Function0;",
        "maintained",
        "url",
        "secondUrl",
        "request",
        "requestBean",
        "requestSecondUrl",
        "requestSecondUrlBean",
        "setCountUrlCallBack",
        "init",
        "Lkotlin/ExtensionFunctionType;",
        "setHttpManagerCallBack",
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
.field public static final INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "HttpManager"

.field private static _CountUrlCallBack:Lco/bxvip/android/commonlib/http/CountUrlCallBack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _HttpManagerCallBack:Lco/bxvip/android/commonlib/http/HttpManagerCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/http/HttpManager;-><init>()V

    sput-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    .line 18
    const-string v0, "HttpManager"

    sput-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$commonRequest(Lco/bxvip/android/commonlib/http/HttpManager;Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V
    .locals 0
    .param p0, "$this"    # Lco/bxvip/android/commonlib/http/HttpManager;
    .param p1, "formBody"    # Lokhttp3/FormBody$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "classOfT"    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "success"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "fail"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "timeout"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6, "maintained"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7, "url"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8, "secondUrl"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9, "isCommonParameter"    # Z
    .param p10, "headers"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-direct/range {p0 .. p10}, Lco/bxvip/android/commonlib/http/HttpManager;->commonRequest(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lco/bxvip/android/commonlib/http/HttpManager;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lco/bxvip/android/commonlib/http/HttpManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final declared-synchronized commonHeaders(Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 7
    .param p1, "headers"    # Lokhttp3/Headers;

    monitor-enter p0

    .line 294
    :try_start_0
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 295
    .local v0, "build":Lokhttp3/Headers$Builder;
    sget-object v1, Lco/bxvip/android/commonlib/http/HttpManager;->_HttpManagerCallBack:Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onRequestCommonHeader()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 296
    sget-object v1, Lco/bxvip/android/commonlib/http/HttpManager;->_HttpManagerCallBack:Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onRequestCommonHeader()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 297
    .local v1, "hashMap":Ljava/util/HashMap;
    :goto_1
    if-eqz v1, :cond_2

    .line 298
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 298
    .local v2, "v":Ljava/lang/String;
    .local v3, "k":Ljava/lang/String;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v3, v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, v5

    .line 299
    invoke-virtual {v0, v3, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 298
    .end local v2    # "v":Ljava/lang/String;
    .end local v3    # "k":Ljava/lang/String;
    goto :goto_2

    .line 303
    .end local v1    # "hashMap":Ljava/util/HashMap;
    :cond_2
    if-eqz p1, :cond_5

    .line 304
    invoke-virtual {p1}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 305
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 306
    invoke-virtual {p1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0, v2, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 304
    .end local v2    # "key":Ljava/lang/String;
    :cond_4
    goto :goto_3

    .line 310
    :cond_5
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    const-string v2, "build.build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 293
    .end local v0    # "build":Lokhttp3/Headers$Builder;
    .end local p1    # "headers":Lokhttp3/Headers;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static bridge synthetic commonHeaders$default(Lco/bxvip/android/commonlib/http/HttpManager;Lokhttp3/Headers;ILjava/lang/Object;)Lokhttp3/Headers;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 293
    const/4 p1, 0x0

    check-cast p1, Lokhttp3/Headers;

    :cond_0
    invoke-direct {p0, p1}, Lco/bxvip/android/commonlib/http/HttpManager;->commonHeaders(Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized commonParameter(Lokhttp3/FormBody$Builder;Z)Lokhttp3/FormBody;
    .locals 6
    .param p1, "formBody"    # Lokhttp3/FormBody$Builder;
    .param p2, "isCommonParameter"    # Z

    monitor-enter p0

    .line 268
    nop

    .line 269
    if-eqz p2, :cond_3

    .line 270
    :try_start_0
    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->_HttpManagerCallBack:Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onFormBodyBefore()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 271
    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->_HttpManagerCallBack:Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onFormBodyBefore()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 272
    .local v0, "hashMap":Ljava/util/HashMap;
    :goto_1
    if-eqz v0, :cond_2

    .line 273
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 273
    .local v1, "v":Ljava/lang/String;
    .local v2, "k":Ljava/lang/String;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    .line 274
    invoke-virtual {p1, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 273
    .end local v1    # "v":Ljava/lang/String;
    .end local v2    # "k":Ljava/lang/String;
    goto :goto_2

    .line 278
    .end local v0    # "hashMap":Ljava/util/HashMap;
    :cond_2
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    const-string v1, "formBody.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 267
    .end local p1    # "formBody":Lokhttp3/FormBody$Builder;
    .end local p2    # "isCommonParameter":Z
    :catchall_0
    move-exception p1

    goto :goto_6

    .line 282
    .restart local p1    # "formBody":Lokhttp3/FormBody$Builder;
    .restart local p2    # "isCommonParameter":Z
    :catch_0
    move-exception v0

    goto :goto_4

    .line 280
    :cond_3
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    const-string v1, "formBody.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :goto_3
    goto :goto_5

    .line 282
    :goto_4
    nop

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lco/bxvip/android/commonlib/http/HttpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7f51\u7edc\u5f02\u5e38:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    const-string v2, "formBody.build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    move-object v0, v1

    :goto_5
    monitor-exit p0

    return-object v0

    .line 267
    .end local p1    # "formBody":Lokhttp3/FormBody$Builder;
    .end local p2    # "isCommonParameter":Z
    :goto_6
    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized commonRequest(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V
    .locals 18
    .param p1, "formBody"    # Lokhttp3/FormBody$Builder;
    .param p2, "classOfT"    # Ljava/lang/Class;
    .param p3, "success"    # Lkotlin/jvm/functions/Function1;
    .param p4, "fail"    # Lkotlin/jvm/functions/Function1;
    .param p5, "timeout"    # Lkotlin/jvm/functions/Function0;
    .param p6, "maintained"    # Lkotlin/jvm/functions/Function1;
    .param p7, "url"    # Ljava/lang/String;
    .param p8, "secondUrl"    # Ljava/lang/String;
    .param p9, "isCommonParameter"    # Z
    .param p10, "headers"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/FormBody$Builder;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lokhttp3/Headers;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v13, p7

    move-object/from16 v14, p10

    monitor-enter p0

    .line 148
    nop

    .line 149
    :try_start_0
    sget-object v2, Lco/bxvip/android/commonlib/http/NetworkUtil;->Companion:Lco/bxvip/android/commonlib/http/NetworkUtil$Companion;

    sget-object v3, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lco/bxvip/android/commonlib/http/NetworkUtil$Companion;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 150
    sget-object v2, Lco/bxvip/android/commonlib/http/HttpManager;->TAG:Ljava/lang/String;

    const-string v4, "\u8bf7\u8fde\u63a5\u7f51\u7edc...."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v2, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v4, "\u8bf7\u8fde\u63a5\u7f51\u7edc...."

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_1
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v2, ""

    iput-object v2, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 155
    .local v12, "responseData":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v2, v13

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    .line 156
    nop

    .line 166
    nop

    .line 156
    nop

    .line 165
    nop

    .line 156
    nop

    .line 164
    nop

    .line 156
    nop

    .line 157
    nop

    .line 156
    :try_start_2
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    sget-object v6, Lco/bxvip/android/commonlib/http/HttpManager;->_HttpManagerCallBack:Lco/bxvip/android/commonlib/http/HttpManagerCallback;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    :try_start_3
    invoke-virtual {v6}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onRequestUrl()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    :try_start_4
    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    move-object/from16 v6, p8

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v6, :cond_3

    const/4 v3, 0x1

    nop

    :cond_3
    if-eqz v3, :cond_5

    .line 161
    :try_start_5
    sget-object v3, Lco/bxvip/android/commonlib/http/HttpManager;->_HttpManagerCallBack:Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onRequstSecondUrl()Lkotlin/jvm/functions/Function0;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const-string v3, ""
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 162
    :cond_5
    nop

    .line 160
    move-object/from16 v3, p8

    :goto_2
    :try_start_6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 164
    move-object/from16 v11, p1

    move/from16 v10, p9

    :try_start_7
    invoke-direct {v1, v11, v10}, Lco/bxvip/android/commonlib/http/HttpManager;->commonParameter(Lokhttp3/FormBody$Builder;Z)Lokhttp3/FormBody;

    move-result-object v3

    check-cast v3, Lokhttp3/RequestBody;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 165
    invoke-direct {v1, v14}, Lco/bxvip/android/commonlib/http/HttpManager;->commonHeaders(Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 166
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    goto :goto_3

    .line 253
    .end local v12    # "responseData":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catch_0
    move-exception v0

    move-object/from16 v11, p1

    move/from16 v10, p9

    goto :goto_5

    .line 168
    .restart local v12    # "responseData":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_6
    move-object/from16 v11, p1

    move/from16 v10, p9

    .line 171
    nop

    .line 168
    nop

    .line 170
    nop

    .line 168
    nop

    .line 169
    nop

    .line 168
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 169
    invoke-virtual {v2, v13}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 170
    invoke-direct {v1, v14}, Lco/bxvip/android/commonlib/http/HttpManager;->commonHeaders(Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 155
    :goto_3
    move-object v9, v2

    .line 173
    .local v9, "request":Lokhttp3/Request;
    sget-object v2, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v9}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    if-eqz v8, :cond_7

    new-instance v15, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;

    move-object v2, v15

    move-object v3, v11

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v16, v8

    move-object/from16 v8, p6

    move-object/from16 v17, v9

    move-object v9, v13

    .line 173
    .end local v9    # "request":Lokhttp3/Request;
    .local v17, "request":Lokhttp3/Request;
    move-object/from16 v10, p8

    move-object v11, v14

    invoke-direct/range {v2 .. v12}, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;-><init>(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object v2, v15

    check-cast v2, Lokhttp3/Callback;

    move-object/from16 v3, v16

    invoke-interface {v3, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 173
    .end local v17    # "request":Lokhttp3/Request;
    .restart local v9    # "request":Lokhttp3/Request;
    :cond_7
    move-object/from16 v17, v9

    .line 258
    .end local v9    # "request":Lokhttp3/Request;
    .end local v12    # "responseData":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_4
    move-object/from16 v5, p4

    goto :goto_6

    .line 147
    .end local p1    # "formBody":Lokhttp3/FormBody$Builder;
    .end local p2    # "classOfT":Ljava/lang/Class;
    .end local p3    # "success":Lkotlin/jvm/functions/Function1;
    .end local p4    # "fail":Lkotlin/jvm/functions/Function1;
    .end local p5    # "timeout":Lkotlin/jvm/functions/Function0;
    .end local p6    # "maintained":Lkotlin/jvm/functions/Function1;
    .end local p7    # "url":Ljava/lang/String;
    .end local p8    # "secondUrl":Ljava/lang/String;
    .end local p9    # "isCommonParameter":Z
    .end local p10    # "headers":Lokhttp3/Headers;
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_7

    .line 253
    .restart local p1    # "formBody":Lokhttp3/FormBody$Builder;
    .restart local p2    # "classOfT":Ljava/lang/Class;
    .restart local p3    # "success":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "fail":Lkotlin/jvm/functions/Function1;
    .restart local p5    # "timeout":Lkotlin/jvm/functions/Function0;
    .restart local p6    # "maintained":Lkotlin/jvm/functions/Function1;
    .restart local p7    # "url":Ljava/lang/String;
    .restart local p8    # "secondUrl":Ljava/lang/String;
    .restart local p9    # "isCommonParameter":Z
    .restart local p10    # "headers":Lokhttp3/Headers;
    :catch_1
    move-exception v0

    :goto_5
    move-object v2, v0

    .line 254
    .local v2, "e":Ljava/lang/Exception;
    :try_start_8
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKHander()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$2;

    move-object/from16 v5, p4

    invoke-direct {v4, v5, v2}, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    sget-object v3, Lco/bxvip/android/commonlib/http/HttpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7f51\u7edc\u5f02\u5e38:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 258
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6
    nop

    .line 259
    monitor-exit p0

    return-void

    .line 147
    .end local p1    # "formBody":Lokhttp3/FormBody$Builder;
    .end local p2    # "classOfT":Ljava/lang/Class;
    .end local p3    # "success":Lkotlin/jvm/functions/Function1;
    .end local p4    # "fail":Lkotlin/jvm/functions/Function1;
    .end local p5    # "timeout":Lkotlin/jvm/functions/Function0;
    .end local p6    # "maintained":Lkotlin/jvm/functions/Function1;
    .end local p7    # "url":Ljava/lang/String;
    .end local p8    # "secondUrl":Ljava/lang/String;
    .end local p9    # "isCommonParameter":Z
    .end local p10    # "headers":Lokhttp3/Headers;
    :goto_7
    monitor-exit p0

    throw v2
.end method

.method static bridge synthetic commonRequest$default(Lco/bxvip/android/commonlib/http/HttpManager;Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;ILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    .line 145
    const-string v1, ""

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 146
    const-string v0, ""

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lco/bxvip/android/commonlib/http/HttpManager;->commonRequest(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V

    return-void
.end method

.method public static bridge synthetic request$default(Lco/bxvip/android/commonlib/http/HttpManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;ILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v1, p8, 0x20

    if-eqz v1, :cond_0

    .line 41
    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, Lokhttp3/Headers;

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v9}, Lco/bxvip/android/commonlib/http/HttpManager;->request(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;)V

    return-void
.end method

.method public static bridge synthetic request$default(Lco/bxvip/android/commonlib/http/HttpManager;Lokhttp3/FormBody$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;ILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v1, p8, 0x20

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, Lokhttp3/Headers;

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v9}, Lco/bxvip/android/commonlib/http/HttpManager;->request(Lokhttp3/FormBody$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;)V

    return-void
.end method

.method public static bridge synthetic requestBean$default(Lco/bxvip/android/commonlib/http/HttpManager;Ljava/lang/String;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;ILjava/lang/Object;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    .line 57
    const/4 v1, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move/from16 v9, p7

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, Lokhttp3/Headers;

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Lco/bxvip/android/commonlib/http/HttpManager;->requestBean(Ljava/lang/String;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;)V

    return-void
.end method

.method public static bridge synthetic requestBean$default(Lco/bxvip/android/commonlib/http/HttpManager;Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;ILjava/lang/Object;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move/from16 v9, p7

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, Lokhttp3/Headers;

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Lco/bxvip/android/commonlib/http/HttpManager;->requestBean(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;)V

    return-void
.end method

.method public static bridge synthetic requestSecondUrl$default(Lco/bxvip/android/commonlib/http/HttpManager;Ljava/lang/String;Lokhttp3/FormBody$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;ILjava/lang/Object;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move/from16 v9, p7

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, Lokhttp3/Headers;

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Lco/bxvip/android/commonlib/http/HttpManager;->requestSecondUrl(Ljava/lang/String;Lokhttp3/FormBody$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;)V

    return-void
.end method

.method public static bridge synthetic requestSecondUrlBean$default(Lco/bxvip/android/commonlib/http/HttpManager;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;ILjava/lang/Object;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    .line 122
    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move/from16 v10, p8

    :goto_0
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, Lokhttp3/Headers;

    move-object v11, v0

    goto :goto_1

    :cond_1
    move-object/from16 v11, p9

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v11}, Lco/bxvip/android/commonlib/http/HttpManager;->requestSecondUrlBean(Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;)V

    return-void
.end method


# virtual methods
.method public final get_CountUrlCallBack()Lco/bxvip/android/commonlib/http/CountUrlCallBack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 20
    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->_CountUrlCallBack:Lco/bxvip/android/commonlib/http/CountUrlCallBack;

    return-object v0
.end method

.method public final get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 19
    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->_HttpManagerCallBack:Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    return-object v0
.end method

.method public final declared-synchronized request(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;)V
    .locals 15
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "success"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "fail"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "timeout"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "maintained"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6, "isCommonParameter"    # Z
    .param p7, "headers"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lokhttp3/Headers;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v1, "url"

    move-object/from16 v12, p1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "success"

    move-object/from16 v13, p2

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fail"

    move-object/from16 v14, p3

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeout"

    move-object/from16 v11, p4

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maintained"

    move-object/from16 v10, p5

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v2, Lokhttp3/FormBody$Builder;

    invoke-direct {v2}, Lokhttp3/FormBody$Builder;-><init>()V

    const-class v3, Ljava/lang/String;

    const-string v9, ""

    move-object v1, p0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v11

    move-object v7, v10

    move-object v8, v12

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lco/bxvip/android/commonlib/http/HttpManager;->commonRequest(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 41
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "success":Lkotlin/jvm/functions/Function1;
    .end local p3    # "fail":Lkotlin/jvm/functions/Function1;
    .end local p4    # "timeout":Lkotlin/jvm/functions/Function0;
    .end local p5    # "maintained":Lkotlin/jvm/functions/Function1;
    .end local p6    # "isCommonParameter":Z
    .end local p7    # "headers":Lokhttp3/Headers;
    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized request(Lokhttp3/FormBody$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;)V
    .locals 15
    .param p1, "formBody"    # Lokhttp3/FormBody$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "success"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "fail"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "timeout"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "maintained"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6, "isCommonParameter"    # Z
    .param p7, "headers"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/FormBody$Builder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lokhttp3/Headers;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v1, "formBody"

    move-object/from16 v12, p1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "success"

    move-object/from16 v13, p2

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fail"

    move-object/from16 v14, p3

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeout"

    move-object/from16 v11, p4

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maintained"

    move-object/from16 v10, p5

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-class v3, Ljava/lang/String;

    const-string v8, ""

    const-string v9, ""

    move-object v1, p0

    move-object v2, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v11

    move-object v7, v10

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lco/bxvip/android/commonlib/http/HttpManager;->commonRequest(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 72
    .end local p1    # "formBody":Lokhttp3/FormBody$Builder;
    .end local p2    # "success":Lkotlin/jvm/functions/Function1;
    .end local p3    # "fail":Lkotlin/jvm/functions/Function1;
    .end local p4    # "timeout":Lkotlin/jvm/functions/Function0;
    .end local p5    # "maintained":Lkotlin/jvm/functions/Function1;
    .end local p6    # "isCommonParameter":Z
    .end local p7    # "headers":Lokhttp3/Headers;
    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized requestBean(Ljava/lang/String;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;)V
    .locals 15
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "classOfT"    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "success"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "fail"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "timeout"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6, "maintained"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7, "isCommonParameter"    # Z
    .param p8, "headers"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lokhttp3/Headers;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v1, "url"

    move-object/from16 v12, p1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "success"

    move-object/from16 v13, p3

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fail"

    move-object/from16 v14, p4

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeout"

    move-object/from16 v11, p5

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maintained"

    move-object/from16 v10, p6

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v2, Lokhttp3/FormBody$Builder;

    invoke-direct {v2}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v9, ""

    move-object v1, p0

    move-object/from16 v3, p2

    move-object v4, v13

    move-object v5, v14

    move-object v6, v11

    move-object v7, v10

    move-object v8, v12

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lco/bxvip/android/commonlib/http/HttpManager;->commonRequest(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 57
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "classOfT":Ljava/lang/Class;
    .end local p3    # "success":Lkotlin/jvm/functions/Function1;
    .end local p4    # "fail":Lkotlin/jvm/functions/Function1;
    .end local p5    # "timeout":Lkotlin/jvm/functions/Function0;
    .end local p6    # "maintained":Lkotlin/jvm/functions/Function1;
    .end local p7    # "isCommonParameter":Z
    .end local p8    # "headers":Lokhttp3/Headers;
    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized requestBean(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;)V
    .locals 15
    .param p1, "formBody"    # Lokhttp3/FormBody$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "classOfT"    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "success"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "fail"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "timeout"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6, "maintained"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7, "isCommonParameter"    # Z
    .param p8, "headers"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/FormBody$Builder;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lokhttp3/Headers;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v1, "formBody"

    move-object/from16 v12, p1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "success"

    move-object/from16 v13, p3

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fail"

    move-object/from16 v14, p4

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeout"

    move-object/from16 v11, p5

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maintained"

    move-object/from16 v10, p6

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const-string v8, ""

    const-string v9, ""

    move-object v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object v4, v13

    move-object v5, v14

    move-object v6, v11

    move-object v7, v10

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lco/bxvip/android/commonlib/http/HttpManager;->commonRequest(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 88
    .end local p1    # "formBody":Lokhttp3/FormBody$Builder;
    .end local p2    # "classOfT":Ljava/lang/Class;
    .end local p3    # "success":Lkotlin/jvm/functions/Function1;
    .end local p4    # "fail":Lkotlin/jvm/functions/Function1;
    .end local p5    # "timeout":Lkotlin/jvm/functions/Function0;
    .end local p6    # "maintained":Lkotlin/jvm/functions/Function1;
    .end local p7    # "isCommonParameter":Z
    .end local p8    # "headers":Lokhttp3/Headers;
    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized requestSecondUrl(Ljava/lang/String;Lokhttp3/FormBody$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;)V
    .locals 15
    .param p1, "secondUrl"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "formBody"    # Lokhttp3/FormBody$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "success"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "fail"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "timeout"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6, "maintained"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7, "isCommonParameter"    # Z
    .param p8, "headers"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/FormBody$Builder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lokhttp3/Headers;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v1, "secondUrl"

    move-object/from16 v12, p1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "formBody"

    move-object/from16 v13, p2

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "success"

    move-object/from16 v14, p3

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fail"

    move-object/from16 v11, p4

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeout"

    move-object/from16 v10, p5

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maintained"

    move-object/from16 v9, p6

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    const-class v3, Ljava/lang/String;

    const-string v8, ""

    move-object v1, p0

    move-object v2, v13

    move-object v4, v14

    move-object v5, v11

    move-object v6, v10

    move-object v7, v9

    move-object v9, v12

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lco/bxvip/android/commonlib/http/HttpManager;->commonRequest(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 105
    .end local p1    # "secondUrl":Ljava/lang/String;
    .end local p2    # "formBody":Lokhttp3/FormBody$Builder;
    .end local p3    # "success":Lkotlin/jvm/functions/Function1;
    .end local p4    # "fail":Lkotlin/jvm/functions/Function1;
    .end local p5    # "timeout":Lkotlin/jvm/functions/Function0;
    .end local p6    # "maintained":Lkotlin/jvm/functions/Function1;
    .end local p7    # "isCommonParameter":Z
    .end local p8    # "headers":Lokhttp3/Headers;
    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized requestSecondUrlBean(Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLokhttp3/Headers;)V
    .locals 15
    .param p1, "secondUrl"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "formBody"    # Lokhttp3/FormBody$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "classOfT"    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "success"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "fail"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6, "timeout"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7, "maintained"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8, "isCommonParameter"    # Z
    .param p9, "headers"    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lokhttp3/FormBody$Builder;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lokhttp3/Headers;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v1, "secondUrl"

    move-object/from16 v12, p1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "formBody"

    move-object/from16 v13, p2

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "success"

    move-object/from16 v14, p4

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fail"

    move-object/from16 v11, p5

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeout"

    move-object/from16 v10, p6

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maintained"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    const-string v8, ""

    move-object v1, p0

    move-object v2, v13

    move-object/from16 v3, p3

    move-object v4, v14

    move-object v5, v11

    move-object v6, v10

    move-object v7, v9

    move-object v9, v12

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lco/bxvip/android/commonlib/http/HttpManager;->commonRequest(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 122
    .end local p1    # "secondUrl":Ljava/lang/String;
    .end local p2    # "formBody":Lokhttp3/FormBody$Builder;
    .end local p3    # "classOfT":Ljava/lang/Class;
    .end local p4    # "success":Lkotlin/jvm/functions/Function1;
    .end local p5    # "fail":Lkotlin/jvm/functions/Function1;
    .end local p6    # "timeout":Lkotlin/jvm/functions/Function0;
    .end local p7    # "maintained":Lkotlin/jvm/functions/Function1;
    .end local p8    # "isCommonParameter":Z
    .end local p9    # "headers":Lokhttp3/Headers;
    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public final setCountUrlCallBack(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "init"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lco/bxvip/android/commonlib/http/CountUrlCallBack;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lco/bxvip/android/commonlib/http/CountUrlCallBack;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/http/CountUrlCallBack;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->_CountUrlCallBack:Lco/bxvip/android/commonlib/http/CountUrlCallBack;

    .line 24
    return-void
.end method

.method public final setHttpManagerCallBack(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "init"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lco/bxvip/android/commonlib/http/HttpManagerCallback;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->_HttpManagerCallBack:Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    .line 28
    return-void
.end method

.method public final set_CountUrlCallBack(Lco/bxvip/android/commonlib/http/CountUrlCallBack;)V
    .locals 0
    .param p1, "<set-?>"    # Lco/bxvip/android/commonlib/http/CountUrlCallBack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 20
    sput-object p1, Lco/bxvip/android/commonlib/http/HttpManager;->_CountUrlCallBack:Lco/bxvip/android/commonlib/http/CountUrlCallBack;

    return-void
.end method

.method public final set_HttpManagerCallBack(Lco/bxvip/android/commonlib/http/HttpManagerCallback;)V
    .locals 0
    .param p1, "<set-?>"    # Lco/bxvip/android/commonlib/http/HttpManagerCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 19
    sput-object p1, Lco/bxvip/android/commonlib/http/HttpManager;->_HttpManagerCallBack:Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    return-void
.end method
