.class public final Lcom/qihoo360/replugin/sdk/log/KeyValueCacheDao;
.super Lco/bxvip/android/commonlib/db/BaseDao;
.source "b.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/bxvip/android/commonlib/db/BaseDao<",
        "Lcom/qihoo360/replugin/sdk/log/KeyValueCache;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/qihoo360/replugin/sdk/log/KeyValueCacheDao;",
        "Lco/bxvip/android/commonlib/db/BaseDao;",
        "Lcom/qihoo360/replugin/sdk/log/KeyValueCache;",
        "()V",
        "getValue",
        "",
        "key",
        "host-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/BaseDao;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/sdk/log/KeyValueCacheDao;->findByKeyValues([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/replugin/sdk/log/KeyValueCache;

    .line 41
    .local v0, "valueBean":Lcom/qihoo360/replugin/sdk/log/KeyValueCache;
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Lcom/qihoo360/replugin/sdk/log/KeyValueCache;->getEncode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/sdk/log/KeyValueCache;->getValue()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/sdk/log/BKt;->decode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/qihoo360/replugin/sdk/log/KeyValueCache;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 44
    :cond_1
    const-string v1, ""

    return-object v1
.end method
