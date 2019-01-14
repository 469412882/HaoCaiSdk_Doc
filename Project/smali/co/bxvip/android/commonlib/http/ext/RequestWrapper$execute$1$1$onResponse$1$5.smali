.class final Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$5;
.super Lkotlin/jvm/internal/Lambda;
.source "Http.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
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
.field final synthetic $data:Ljava/lang/String;

.field final synthetic this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;


# direct methods
.method constructor <init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$5;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;

    iput-object p2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$5;->$data:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$5;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 213
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$5;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;

    iget-object v0, v0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    iget-object v0, v0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;

    iget-object v0, v0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->get_success$lib_http()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sget-object v1, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKGson()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$5;->$data:Ljava/lang/String;

    iget-object v3, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1$5;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;

    iget-object v3, v3, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    iget-object v3, v3, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;

    iget-object v3, v3, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    invoke-virtual {v3}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->getClassOfT()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method
