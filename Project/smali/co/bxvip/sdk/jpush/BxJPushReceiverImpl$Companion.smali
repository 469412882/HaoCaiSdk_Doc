.class public final Lco/bxvip/sdk/jpush/BxJPushReceiverImpl$Companion;
.super Ljava/lang/Object;
.source "BxJPushReceiverImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/sdk/jpush/BxJPushReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lco/bxvip/sdk/jpush/BxJPushReceiverImpl$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
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
.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 96
    invoke-direct {p0}, Lco/bxvip/sdk/jpush/BxJPushReceiverImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lco/bxvip/sdk/jpush/BxJPushReceiverImpl$Companion;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lco/bxvip/sdk/jpush/BxJPushReceiverImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 96
    invoke-direct {p0}, Lco/bxvip/sdk/jpush/BxJPushReceiverImpl$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getTAG()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-static {}, Lco/bxvip/sdk/jpush/BxJPushReceiverImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
