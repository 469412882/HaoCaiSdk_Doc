.class public final Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;
.super Ljava/lang/Object;
.source "BxHostCallbacks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/sdk/BxHostCallbacks;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
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

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 132
    invoke-direct {p0}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;

    .line 132
    invoke-direct {p0}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getTAG()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-static {}, Lcom/qihoo360/replugin/sdk/BxHostCallbacks;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
