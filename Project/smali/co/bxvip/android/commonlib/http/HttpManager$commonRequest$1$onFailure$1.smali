.class final Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;
.super Ljava/lang/Object;
.source "HttpManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
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

.field final synthetic this$0:Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;


# direct methods
.method constructor <init>(Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;Ljava/io/IOException;Lokhttp3/Call;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;

    iput-object p2, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->$e:Ljava/io/IOException;

    iput-object p3, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->$call:Lokhttp3/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 177
    nop

    .line 178
    :try_start_0
    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onSwitchUrl()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;

    iget-object v2, v0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$formBody:Lokhttp3/FormBody$Builder;

    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;

    iget-object v3, v0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$classOfT:Ljava/lang/Class;

    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;

    iget-object v4, v0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$success:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;

    iget-object v5, v0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$fail:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;

    iget-object v6, v0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$timeout:Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;

    iget-object v7, v0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$maintained:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;

    iget-object v8, v0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$url:Ljava/lang/String;

    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;

    iget-object v9, v0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$secondUrl:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;

    iget-object v11, v0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$headers:Lokhttp3/Headers;

    invoke-static/range {v1 .. v11}, Lco/bxvip/android/commonlib/http/HttpManager;->access$commonRequest(Lco/bxvip/android/commonlib/http/HttpManager;Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V

    goto :goto_1

    .line 180
    :cond_2
    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-static {v0}, Lco/bxvip/android/commonlib/http/HttpManager;->access$getTAG$p(Lco/bxvip/android/commonlib/http/HttpManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f51\u7edc\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->$e:Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;

    iget-object v0, v0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$fail:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->$e:Ljava/io/IOException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    goto :goto_2

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->this$0:Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;

    iget-object v1, v1, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1;->$fail:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 186
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/KLog;->INSTANCE:Lco/bxvip/android/commonlib/http/ext/KLog;

    iget-object v1, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->$call:Lokhttp3/Call;

    iget-object v2, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$1$onFailure$1;->$e:Ljava/io/IOException;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v2, Ljava/lang/Exception;

    const-string v3, "http onFailure"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lco/bxvip/android/commonlib/http/ext/KLog;->exceptionLog(Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;I)V

    .line 187
    return-void
.end method
