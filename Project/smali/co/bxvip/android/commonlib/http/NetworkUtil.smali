.class public final Lco/bxvip/android/commonlib/http/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/android/commonlib/http/NetworkUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/http/NetworkUtil;",
        "",
        "()V",
        "Companion",
        "lib-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final Companion:Lco/bxvip/android/commonlib/http/NetworkUtil$Companion;

# The value of this static final field might be set in the static constructor
.field private static final TIMEOUT:I = 0xbb8


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/bxvip/android/commonlib/http/NetworkUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/http/NetworkUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/bxvip/android/commonlib/http/NetworkUtil;->Companion:Lco/bxvip/android/commonlib/http/NetworkUtil$Companion;

    .line 24
    const/16 v0, 0xbb8

    sput v0, Lco/bxvip/android/commonlib/http/NetworkUtil;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTIMEOUT$cp()I
    .locals 1

    .line 20
    sget v0, Lco/bxvip/android/commonlib/http/NetworkUtil;->TIMEOUT:I

    return v0
.end method
