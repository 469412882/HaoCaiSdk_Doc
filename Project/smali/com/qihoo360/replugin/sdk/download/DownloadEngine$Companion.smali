.class public final Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;
.super Ljava/lang/Object;
.source "DownloadEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/sdk/download/DownloadEngine;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0082D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "getTAG",
        "()Ljava/lang/String;",
        "downloadRetryTimes",
        "",
        "getDownloadRetryTimes",
        "()I",
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

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 101
    invoke-direct {p0}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;

    .line 101
    invoke-direct {p0}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getDownloadRetryTimes()I
    .locals 1

    .line 103
    invoke-static {}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->access$getDownloadRetryTimes$cp()I

    move-result v0

    return v0
.end method

.method private final getTAG()Ljava/lang/String;
    .locals 1

    .line 102
    invoke-static {}, Lcom/qihoo360/replugin/sdk/download/DownloadEngine;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
