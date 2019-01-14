.class final Lco/bxvip/android/commonlib/http/ext/HttpKt$pairs$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Http.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/android/commonlib/http/ext/HttpKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lco/bxvip/android/commonlib/http/ext/RequestPairs;",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00032\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<no name provided>",
        "",
        "map",
        "",
        "",
        "makePairs",
        "Lkotlin/Function1;",
        "Lco/bxvip/android/commonlib/http/ext/RequestPairs;",
        "Lkotlin/ExtensionFunctionType;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lco/bxvip/android/commonlib/http/ext/HttpKt$pairs$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/bxvip/android/commonlib/http/ext/HttpKt$pairs$1;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/http/ext/HttpKt$pairs$1;-><init>()V

    sput-object v0, Lco/bxvip/android/commonlib/http/ext/HttpKt$pairs$1;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/HttpKt$pairs$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, p2}, Lco/bxvip/android/commonlib/http/ext/HttpKt$pairs$1;->invoke(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "makePairs"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lco/bxvip/android/commonlib/http/ext/RequestPairs;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "makePairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lco/bxvip/android/commonlib/http/ext/RequestPairs;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/http/ext/RequestPairs;-><init>()V

    .line 86
    .local v0, "requestPair":Lco/bxvip/android/commonlib/http/ext/RequestPairs;
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/RequestPairs;->getPairs()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 88
    return-void
.end method
