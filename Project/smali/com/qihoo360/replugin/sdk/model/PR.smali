.class public final Lcom/qihoo360/replugin/sdk/model/PR;
.super Lcom/qihoo360/replugin/sdk/model/BaseResult;
.source "bean.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qihoo360/replugin/sdk/model/BaseResult<",
        "Ljava/util/List<",
        "+",
        "Lcom/qihoo360/replugin/sdk/model/P;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/qihoo360/replugin/sdk/model/PR;",
        "Lcom/qihoo360/replugin/sdk/model/BaseResult;",
        "",
        "Lcom/qihoo360/replugin/sdk/model/P;",
        "()V",
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
    .locals 6

    .line 36
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/qihoo360/replugin/sdk/model/BaseResult;-><init>(ILjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
