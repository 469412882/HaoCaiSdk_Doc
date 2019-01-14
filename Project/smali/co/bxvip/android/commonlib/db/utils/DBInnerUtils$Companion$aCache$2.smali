.class final Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$aCache$2;
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
        "Lco/bxvip/tools/ACache;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lco/bxvip/tools/ACache;",
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
.field public static final INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$aCache$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$aCache$2;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$aCache$2;-><init>()V

    sput-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$aCache$2;->INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$aCache$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lco/bxvip/tools/ACache;
    .locals 1

    .line 38
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getCtx()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lco/bxvip/tools/ACache;->get(Landroid/content/Context;)Lco/bxvip/tools/ACache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$aCache$2;->invoke()Lco/bxvip/tools/ACache;

    move-result-object v0

    return-object v0
.end method
