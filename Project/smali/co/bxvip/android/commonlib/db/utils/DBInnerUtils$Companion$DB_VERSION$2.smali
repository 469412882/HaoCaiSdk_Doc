.class final Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_VERSION$2;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDBInnerUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBInnerUtils.kt\nco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_VERSION$2\n*L\n1#1,77:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field public static final INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_VERSION$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_VERSION$2;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_VERSION$2;-><init>()V

    sput-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_VERSION$2;->INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_VERSION$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 3

    .line 42
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getACache()Lco/bxvip/tools/ACache;

    move-result-object v0

    const-string v1, "check-db-version-string"

    invoke-virtual {v0, v1}, Lco/bxvip/tools/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "version":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 44
    nop

    .line 45
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 50
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    :cond_1
    const-string v0, "1"

    .line 52
    sget-object v1, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v1}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getACache()Lco/bxvip/tools/ACache;

    move-result-object v1

    const-string v2, "check-db-version-string"

    invoke-virtual {v1, v2, v0}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 54
    .end local v0    # "version":Ljava/lang/String;
    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_VERSION$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
