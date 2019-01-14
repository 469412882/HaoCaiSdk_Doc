.class public Lco/bxvip/android/commonlib/db/info/OrderInfo;
.super Ljava/lang/Object;
.source "OrderInfo.java"


# instance fields
.field public orders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/info/OrderInfo;->orders:Ljava/util/Map;

    .line 19
    return-void
.end method

.method public static get()Lco/bxvip/android/commonlib/db/info/OrderInfo;
    .locals 1

    .line 23
    new-instance v0, Lco/bxvip/android/commonlib/db/info/OrderInfo;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/db/info/OrderInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public order(Ljava/lang/String;Z)Lco/bxvip/android/commonlib/db/info/OrderInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 30
    iget-object v0, p0, Lco/bxvip/android/commonlib/db/info/OrderInfo;->orders:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object p0
.end method
