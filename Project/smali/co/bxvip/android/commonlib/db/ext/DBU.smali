.class public final Lco/bxvip/android/commonlib/db/ext/DBU;
.super Ljava/lang/Object;
.source "DBU.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/android/commonlib/db/ext/DBU$Companion;
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
        "Lco/bxvip/android/commonlib/db/ext/DBU;",
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
.field public static final Companion:Lco/bxvip/android/commonlib/db/ext/DBU$Companion;

.field private static dao:Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/bxvip/android/commonlib/db/ext/DBU;->Companion:Lco/bxvip/android/commonlib/db/ext/DBU$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDao$cp()Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 54
    sget-object v0, Lco/bxvip/android/commonlib/db/ext/DBU;->dao:Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;

    return-object v0
.end method

.method public static final synthetic access$setDao$cp(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;)V
    .locals 0
    .param p0, "<set-?>"    # Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 54
    sput-object p0, Lco/bxvip/android/commonlib/db/ext/DBU;->dao:Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;

    return-void
.end method
