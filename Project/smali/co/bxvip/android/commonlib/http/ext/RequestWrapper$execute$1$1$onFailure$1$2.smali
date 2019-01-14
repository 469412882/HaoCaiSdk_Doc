.class final Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1$2;
.super Ljava/lang/Object;
.source "Http.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
.field final synthetic $e:Ljava/lang/Exception;

.field final synthetic this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;


# direct methods
.method constructor <init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1$2;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;

    iput-object p2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1$2;->$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 158
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;

    iget-object v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1$2;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;

    iget-object v1, v1, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    iget-object v1, v1, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;

    iget-object v1, v1, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->get_fail$lib_http()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    iget-object v2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1$2;->$e:Ljava/lang/Exception;

    check-cast v2, Ljava/lang/Throwable;

    sget-object v3, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1$2$1;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1$2$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->unifiedError(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;)V

    .line 159
    return-void
.end method
