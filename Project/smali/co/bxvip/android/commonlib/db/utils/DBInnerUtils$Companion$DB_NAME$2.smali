.class final Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_NAME$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DBInnerUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_NAME$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_NAME$2;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_NAME$2;-><init>()V

    sput-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_NAME$2;->INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_NAME$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_NAME$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 3

    .line 58
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getACache()Lco/bxvip/tools/ACache;

    move-result-object v0

    const-string v1, "check-db-name-string"

    invoke-virtual {v0, v1}, Lco/bxvip/tools/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    const-string v0, "ormlite-db-date.db"

    .line 61
    sget-object v1, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getACache()Lco/bxvip/tools/ACache;

    move-result-object v1

    const-string v2, "check-db-name-string"

    invoke-virtual {v1, v2, v0}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    nop

    .line 63
    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method
