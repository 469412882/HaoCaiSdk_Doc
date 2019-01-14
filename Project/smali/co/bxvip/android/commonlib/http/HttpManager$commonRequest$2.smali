.class final Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$2;
.super Ljava/lang/Object;
.source "HttpManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/http/HttpManager;->commonRequest(Lokhttp3/FormBody$Builder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLokhttp3/Headers;)V
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

.field final synthetic $fail:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$2;->$fail:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$2;->$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 255
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$2;->$fail:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lco/bxvip/android/commonlib/http/HttpManager$commonRequest$2;->$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method
