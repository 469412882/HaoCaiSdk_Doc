.class public Lco/bxvip/android/commonlib/http/ext/RequestWrapper;
.super Ljava/lang/Object;
.source "Http.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http.kt\nco/bxvip/android/commonlib/http/ext/RequestWrapper\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,313:1\n57#2:314\n82#2,3:315\n*E\n*S KotlinDebug\n*F\n+ 1 Http.kt\nco/bxvip/android/commonlib/http/ext/RequestWrapper\n*L\n256#1:314\n256#1,3:315\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010E\u001a\u00020\u00062\u0006\u0010F\u001a\u00020GJ]\u0010H\u001a\u00020\r2\u0006\u0010?\u001a\u00020\r2\u0008\u0008\u0002\u0010.\u001a\u00020/2\u0012\u0010I\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00132-\u0010J\u001a)\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0K\u00a2\u0006\u000c\u0008L\u0012\u0008\u0008M\u0012\u0004\u0008\u0008(N\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u0014\u0010O\u001a\u00020\u00062\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u001a\u0010Q\u001a\u00020\u00062\u0012\u0010R\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00060\u000cJ\u001a\u0010S\u001a\u00020\u00062\u0012\u0010S\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u000cJ\u0008\u0010F\u001a\u0004\u0018\u00010GJ$\u0010J\u001a\u00020\r\"\u0004\u0008\u0001\u0010T\"\u0004\u0008\u0002\u0010U*\u000e\u0012\u0004\u0012\u0002HT\u0012\u0004\u0012\u0002HU0KH\u0002R \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR&\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00060\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u0013X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R \u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u0013X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R \u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u0013X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015R&\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000f\"\u0004\u0008\u001c\u0010\u0011R.\u0010\u001d\u001a\u001f\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00060\u000c\u00a2\u0006\u0002\u0008\u001f\u0012\u0004\u0012\u00020\u00060\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u000fR \u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R.\u0010\'\u001a\u001f\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00060\u000c\u00a2\u0006\u0002\u0008\u001f\u0012\u0004\u0012\u00020\u00060\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u000fR\u001a\u0010)\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001a\u0010.\u001a\u00020/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u00104\u001a\u00020/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00101\"\u0004\u00086\u00103R\u001a\u00107\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010+\"\u0004\u00089\u0010-R\u001a\u0010:\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010+\"\u0004\u0008<\u0010-R\u000e\u0010=\u001a\u00020>X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010?\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010+\"\u0004\u0008A\u0010-R\u001a\u0010B\u001a\u00020/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u00101\"\u0004\u0008D\u00103\u00a8\u0006V"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/http/ext/RequestWrapper;",
        "T",
        "",
        "()V",
        "_40000Page",
        "Lkotlin/Function0;",
        "",
        "get_40000Page$lib_http",
        "()Lkotlin/jvm/functions/Function0;",
        "set_40000Page$lib_http",
        "(Lkotlin/jvm/functions/Function0;)V",
        "_fail",
        "Lkotlin/Function1;",
        "",
        "get_fail$lib_http",
        "()Lkotlin/jvm/functions/Function1;",
        "set_fail$lib_http",
        "(Lkotlin/jvm/functions/Function1;)V",
        "_fileParams",
        "",
        "get_fileParams",
        "()Ljava/util/Map;",
        "_headers",
        "get_headers",
        "_params",
        "get_params",
        "_success",
        "get_success$lib_http",
        "set_success$lib_http",
        "body",
        "Lco/bxvip/android/commonlib/http/ext/RequestPairs;",
        "Lkotlin/ExtensionFunctionType;",
        "getBody",
        "classOfT",
        "Ljava/lang/Class;",
        "getClassOfT",
        "()Ljava/lang/Class;",
        "setClassOfT",
        "(Ljava/lang/Class;)V",
        "headers",
        "getHeaders",
        "method",
        "getMethod",
        "()Ljava/lang/String;",
        "setMethod",
        "(Ljava/lang/String;)V",
        "needCommonParam",
        "",
        "getNeedCommonParam",
        "()Z",
        "setNeedCommonParam",
        "(Z)V",
        "needTry",
        "getNeedTry",
        "setNeedTry",
        "subUrl",
        "getSubUrl",
        "setSubUrl",
        "tag",
        "getTag",
        "setTag",
        "tryCount",
        "",
        "url",
        "getUrl",
        "setUrl",
        "useDefaultResultBean",
        "getUseDefaultResultBean",
        "setUseDefaultResultBean",
        "execute",
        "request",
        "Lokhttp3/Request;",
        "getGetUrl",
        "params",
        "toQueryString",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "map",
        "on40000Page",
        "on40000",
        "onFail",
        "onError",
        "onSuccess",
        "K",
        "V",
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
.field private _40000Page:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private _fail:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _fileParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private _success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final body:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
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

.field private classOfT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final headers:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
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

.field private method:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private needCommonParam:Z

.field private needTry:Z

.field private subUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tryCount:I

.field private url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private useDefaultResultBean:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->url:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->subUrl:Ljava/lang/String;

    .line 93
    const-string v0, "GET"

    iput-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->method:Ljava/lang/String;

    .line 94
    const-class v0, Ljava/lang/String;

    iput-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->classOfT:Ljava/lang/Class;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->useDefaultResultBean:Z

    .line 96
    iput-boolean v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->needCommonParam:Z

    .line 97
    iput-boolean v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->needTry:Z

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->tag:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_params:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_fileParams:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_headers:Ljava/util/Map;

    .line 104
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$_success$1;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$_success$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_success:Lkotlin/jvm/functions/Function1;

    .line 105
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$_fail$1;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$_fail$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_fail:Lkotlin/jvm/functions/Function1;

    .line 106
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$_40000Page$1;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$_40000Page$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_40000Page:Lkotlin/jvm/functions/Function0;

    .line 108
    invoke-static {}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->getPairs()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_params:Ljava/util/Map;

    invoke-static {v0, v1}, Lco/bxvip/tools/partials/NamespaceKt;->partially1(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iput-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->body:Lkotlin/jvm/functions/Function1;

    .line 109
    invoke-static {}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->getPairs()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_headers:Ljava/util/Map;

    invoke-static {v0, v1}, Lco/bxvip/tools/partials/NamespaceKt;->partially1(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iput-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->headers:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getTryCount$p(Lco/bxvip/android/commonlib/http/ext/RequestWrapper;)I
    .locals 1
    .param p0, "$this"    # Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    .line 90
    iget v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->tryCount:I

    return v0
.end method

.method public static final synthetic access$setTryCount$p(Lco/bxvip/android/commonlib/http/ext/RequestWrapper;I)V
    .locals 0
    .param p0, "$this"    # Lco/bxvip/android/commonlib/http/ext/RequestWrapper;
    .param p1, "<set-?>"    # I

    .line 90
    iput p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->tryCount:I

    return-void
.end method

.method public static final synthetic access$toQueryString(Lco/bxvip/android/commonlib/http/ext/RequestWrapper;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lco/bxvip/android/commonlib/http/ext/RequestWrapper;
    .param p1, "$receiver"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->toQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getGetUrl(Ljava/lang/String;ZLjava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "needCommonParam"    # Z
    .param p3, "params"    # Ljava/util/Map;
    .param p4, "toQueryString"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 245
    if-eqz p2, :cond_2

    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onFormBodyBefore()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 246
    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v0

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

    .line 247
    .local v0, "hashMap":Ljava/util/HashMap;
    :goto_1
    if-eqz v0, :cond_2

    .line 248
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 248
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

    move-object v2, v5

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 249
    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    goto :goto_2

    .line 253
    .end local v0    # "hashMap":Ljava/util/HashMap;
    .end local v1    # "v":Ljava/lang/String;
    .end local v2    # "k":Ljava/lang/String;
    :cond_2
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p4, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method static bridge synthetic getGetUrl$default(Lco/bxvip/android/commonlib/http/ext/RequestWrapper;Ljava/lang/String;ZLjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p6, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getGetUrl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    .line 244
    const/4 p2, 0x1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->getGetUrl(Ljava/lang/String;ZLjava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final toQueryString(Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .param p1, "$receiver"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 256
    .local v0, "$i$f$map":I
    move-object v1, p1

    .line 314
    .local v1, "$receiver$iv":Ljava/util/Map;
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 314
    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v1

    .line 314
    .local v3, "$receiver$iv$iv":Ljava/util/Map;
    const/4 v4, 0x0

    move v5, v4

    .line 315
    .local v5, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 315
    .local v4, "$i$a$1$map":I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 316
    .local v7, "item$iv$iv":Ljava/util/Map$Entry;
    move-object v8, v7

    .line 256
    .local v8, "it":Ljava/util/Map$Entry;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 256
    .end local v4    # "$i$a$1$map":I
    .end local v8    # "it":Ljava/util/Map$Entry;
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v7    # "item$iv$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 317
    :cond_0
    nop

    .line 317
    .end local v3    # "$receiver$iv$iv":Ljava/util/Map;
    .end local v5    # "$i$f$mapTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 317
    .end local v0    # "$i$f$map":I
    .end local v1    # "$receiver$iv":Ljava/util/Map;
    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 256
    const-string v0, "&"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final execute(Lokhttp3/Request;)V
    .locals 2
    .param p1, "request"    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKThreadPool()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;

    invoke-direct {v1, p0, p1}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;-><init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper;Lokhttp3/Request;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method public final getBody()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
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

    .line 108
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->body:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getClassOfT()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 94
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->classOfT:Ljava/lang/Class;

    return-object v0
.end method

.method public final getHeaders()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
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

    .line 109
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->headers:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 93
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final getNeedCommonParam()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->needCommonParam:Z

    return v0
.end method

.method public final getNeedTry()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->needTry:Z

    return v0
.end method

.method public final getSubUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 92
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->subUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 98
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 91
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getUseDefaultResultBean()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->useDefaultResultBean:Z

    return v0
.end method

.method public final get_40000Page$lib_http()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 106
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_40000Page:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final get_fail$lib_http()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 105
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_fail:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method protected final get_fileParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 101
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_fileParams:Ljava/util/Map;

    return-object v0
.end method

.method protected final get_headers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 102
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_headers:Ljava/util/Map;

    return-object v0
.end method

.method protected final get_params()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 100
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_params:Ljava/util/Map;

    return-object v0
.end method

.method public final get_success$lib_http()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 104
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_success:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final on40000Page(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "on40000"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "on40000"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_40000Page:Lkotlin/jvm/functions/Function0;

    .line 122
    return-void
.end method

.method public final onFail(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "onError"    # Lkotlin/jvm/functions/Function1;
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
            ">;)V"
        }
    .end annotation

    const-string v0, "onError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_fail:Lkotlin/jvm/functions/Function1;

    .line 118
    return-void
.end method

.method public final onSuccess(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "onSuccess"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_success:Lkotlin/jvm/functions/Function1;

    .line 114
    return-void
.end method

.method public final request()Lokhttp3/Request;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 125
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v1, "Delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :sswitch_2
    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_3
    const-string v1, "Post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_4
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->url:Ljava/lang/String;

    iget-object v3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->subUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->access$fillUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->needCommonParam:Z

    iget-object v3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_params:Ljava/util/Map;

    invoke-static {v1, v3}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->access$fillRequestForm(ZLjava/util/Map;)Lokhttp3/FormBody;

    move-result-object v1

    check-cast v1, Lokhttp3/RequestBody;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    goto/16 :goto_5

    .line 125
    :sswitch_5
    const-string v1, "put"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_6
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :sswitch_7
    const-string v1, "Put"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_8
    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    :goto_1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->url:Ljava/lang/String;

    iget-object v3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->subUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->access$fillUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->needCommonParam:Z

    iget-object v3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_params:Ljava/util/Map;

    invoke-static {v1, v3}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->access$fillRequestForm(ZLjava/util/Map;)Lokhttp3/FormBody;

    move-result-object v1

    check-cast v1, Lokhttp3/RequestBody;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    goto :goto_5

    .line 125
    :sswitch_9
    const-string v1, "Get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :sswitch_a
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_2
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->url:Ljava/lang/String;

    iget-object v3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->subUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->access$fillUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->needCommonParam:Z

    iget-object v4, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_params:Ljava/util/Map;

    new-instance v5, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$request$req$1;

    invoke-direct {v5, p0}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$request$req$1;-><init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v1, v3, v4, v5}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->getGetUrl(Ljava/lang/String;ZLjava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    goto :goto_5

    :sswitch_b
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_3
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->url:Ljava/lang/String;

    iget-object v3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->subUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->access$fillUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->needCommonParam:Z

    iget-object v3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_params:Ljava/util/Map;

    invoke-static {v1, v3}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->access$fillRequestForm(ZLjava/util/Map;)Lokhttp3/FormBody;

    move-result-object v1

    check-cast v1, Lokhttp3/RequestBody;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    goto :goto_5

    .line 129
    :cond_0
    :goto_4
    nop

    .line 125
    move-object v0, v2

    .line 131
    .local v0, "req":Lokhttp3/Request$Builder;
    :goto_5
    if-eqz v0, :cond_1

    iget-object v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_headers:Ljava/util/Map;

    invoke-static {v1}, Lco/bxvip/android/commonlib/http/ext/HttpKt;->access$fillRequestHeader(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 132
    :cond_1
    iget-object v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->tag:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_6

    :cond_2
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_3

    .line 133
    if-eqz v0, :cond_3

    iget-object v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 135
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    nop

    :cond_4
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_b
        0x11336 -> :sswitch_a
        0x11736 -> :sswitch_9
        0x136ef -> :sswitch_8
        0x13aef -> :sswitch_7
        0x18f56 -> :sswitch_6
        0x1b30f -> :sswitch_5
        0x2590a0 -> :sswitch_4
        0x260cc0 -> :sswitch_3
        0x3498a0 -> :sswitch_2
        0x77f979ab -> :sswitch_1
        0x79cb71cb -> :sswitch_0
    .end sparse-switch
.end method

.method public final setClassOfT(Ljava/lang/Class;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->classOfT:Ljava/lang/Class;

    return-void
.end method

.method public final setMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->method:Ljava/lang/String;

    return-void
.end method

.method public final setNeedCommonParam(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 96
    iput-boolean p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->needCommonParam:Z

    return-void
.end method

.method public final setNeedTry(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 97
    iput-boolean p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->needTry:Z

    return-void
.end method

.method public final setSubUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->subUrl:Ljava/lang/String;

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->tag:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->url:Ljava/lang/String;

    return-void
.end method

.method public final setUseDefaultResultBean(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 95
    iput-boolean p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->useDefaultResultBean:Z

    return-void
.end method

.method public final set_40000Page$lib_http(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_40000Page:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final set_fail$lib_http(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
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
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_fail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final set_success$lib_http(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->_success:Lkotlin/jvm/functions/Function1;

    return-void
.end method
