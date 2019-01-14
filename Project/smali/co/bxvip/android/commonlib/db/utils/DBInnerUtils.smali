.class public final Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;
.super Ljava/lang/Object;
.source "DBInnerUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;",
        "",
        "()V",
        "Companion",
        "android-support"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

.field private static final DB_NAME$delegate:Lkotlin/Lazy;

.field private static final DB_VERSION$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final aCache$delegate:Lkotlin/Lazy;

.field private static final ctx$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final dbInstance$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final logTAG:Ljava/lang/String; = "**Plugin-Database-log**:"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final showDBLog$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    .line 33
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$ctx$2;->INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$ctx$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->ctx$delegate:Lkotlin/Lazy;

    .line 37
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$aCache$2;->INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$aCache$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->aCache$delegate:Lkotlin/Lazy;

    .line 41
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_VERSION$2;->INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_VERSION$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->DB_VERSION$delegate:Lkotlin/Lazy;

    .line 57
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_NAME$2;->INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$DB_NAME$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->DB_NAME$delegate:Lkotlin/Lazy;

    .line 66
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$dbInstance$2;->INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$dbInstance$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->dbInstance$delegate:Lkotlin/Lazy;

    .line 70
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$showDBLog$2;->INSTANCE:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion$showDBLog$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->showDBLog$delegate:Lkotlin/Lazy;

    .line 75
    const-string v0, "**Plugin-Database-log**:"

    sput-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->logTAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getACache$cp()Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->aCache$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getCtx$cp()Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->ctx$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getDB_NAME$cp()Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->DB_NAME$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getDB_VERSION$cp()Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->DB_VERSION$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getDbInstance$cp()Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->dbInstance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getLogTAG$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->logTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getShowDBLog$cp()Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->showDBLog$delegate:Lkotlin/Lazy;

    return-object v0
.end method
