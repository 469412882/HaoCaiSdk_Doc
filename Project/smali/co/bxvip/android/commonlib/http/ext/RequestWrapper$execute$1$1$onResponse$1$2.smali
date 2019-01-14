.class final Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$2;
.super Ljava/lang/Object;
.source "Http.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->run()V
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
.field final synthetic $fromJsonB:Lco/bxvip/android/commonlib/http/BaseStringResult;


# direct methods
.method constructor <init>(Lco/bxvip/android/commonlib/http/BaseStringResult;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$2;->$fromJsonB:Lco/bxvip/android/commonlib/http/BaseStringResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 197
    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onResponse450000()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 198
    sget-object v0, Lco/bxvip/android/commonlib/http/HttpManager;->INSTANCE:Lco/bxvip/android/commonlib/http/HttpManager;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManager;->get_HttpManagerCallBack()Lco/bxvip/android/commonlib/http/HttpManagerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->get_onResponse450000()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKGson()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$2;->$fromJsonB:Lco/bxvip/android/commonlib/http/BaseStringResult;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/http/BaseStringResult;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ku.getKGson().toJson(fromJsonB.data)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 200
    :cond_1
    return-void
.end method
