.class final Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;
.super Ljava/lang/Object;
.source "Http.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/http/ext/RequestWrapper;->execute(Lokhttp3/Request;)V
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
.field final synthetic $request:Lokhttp3/Request;

.field final synthetic this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;


# direct methods
.method constructor <init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper;Lokhttp3/Request;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper;

    iput-object p2, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->$request:Lokhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 140
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->$request:Lokhttp3/Request;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;

    invoke-direct {v1, p0}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;-><init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;)V

    check-cast v1, Lokhttp3/Callback;

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 241
    return-void
.end method
