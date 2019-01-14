.class final Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$dbInstance$2;
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
        "Lco/bxvip/android/commonlib/db/DatabaseHelper;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lco/bxvip/android/commonlib/db/DatabaseHelper;",
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
.field public static final INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$dbInstance$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$dbInstance$2;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$dbInstance$2;-><init>()V

    sput-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$dbInstance$2;->INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$dbInstance$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lco/bxvip/android/commonlib/db/DatabaseHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 67
    new-instance v0, Lco/bxvip/android/commonlib/db/DatabaseHelper;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/db/DatabaseHelper;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$dbInstance$2;->invoke()Lco/bxvip/android/commonlib/db/DatabaseHelper;

    move-result-object v0

    return-object v0
.end method
