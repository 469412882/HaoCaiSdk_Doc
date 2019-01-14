.class final Lco/bxvip/android/commonlib/http/ext/RequestWrapper$request$req$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Http.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->request()Lokhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/String;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;


# direct methods
.method constructor <init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$request$req$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 90
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$request$req$1;->invoke(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "it"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$request$req$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->access$toQueryString(Lco/bxvip/android/commonlib/http/ext/RequestWrapper;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
