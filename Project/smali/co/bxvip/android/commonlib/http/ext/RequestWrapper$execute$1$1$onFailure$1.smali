.class final Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;
.super Ljava/lang/Object;
.source "Http.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
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
.field final synthetic $call:Lokhttp3/Call;

.field final synthetic $e:Ljava/io/IOException;

.field final synthetic this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;


# direct methods
.method constructor <init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;Ljava/io/IOException;Lokhttp3/Call;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    iput-object p2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;->$e:Ljava/io/IOException;

    iput-object p3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;->$call:Lokhttp3/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 144
    nop

    .line 145
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;

    iget-object v2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    iget-object v2, v2, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;

    iget-object v2, v2, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->get_fail$lib_http()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    iget-object v3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;->$e:Ljava/io/IOException;

    check-cast v3, Ljava/lang/Throwable;

    new-instance v4, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1$1;

    invoke-direct {v4, p0}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1$1;-><init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v2, v3, v0, v4}, Lco/bxvip/android/commonlib/http/ext/UnifiedErrorUtil;->unifiedError(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKHander()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1$2;

    invoke-direct {v3, p0, v1}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1$2;-><init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;Ljava/lang/Exception;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 161
    sget-object v1, Lco/bxvip/android/commonlib/http/ext/KLog;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/KLog;

    iget-object v2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;->$call:Lokhttp3/Call;

    iget-object v3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;->$e:Ljava/io/IOException;

    check-cast v3, Ljava/lang/Exception;

    const-string v4, "http onFailure()"

    invoke-virtual {v1, v2, v3, v4, v0}, Lco/bxvip/android/commonlib/http/ext/KLog;->exceptionLog(Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;I)V

    .line 162
    return-void
.end method
