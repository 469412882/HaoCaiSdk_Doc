.class public final Lco/bxvip/android/commonlib/db/ext/DBU$Companion;
.super Ljava/lang/Object;
.source "DBU.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/android/commonlib/db/ext/DBU;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/db/ext/DBU$Companion;",
        "",
        "()V",
        "dao",
        "Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;",
        "getDao",
        "()Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;",
        "setDao",
        "(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;)V",
        "daoKeyValue",
        "getKeyValue",
        "",
        "key",
        "android-support"
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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 55
    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;-><init>()V

    return-void
.end method

.method private final getDao()Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;
    .locals 1

    .line 56
    invoke-static {}, Lco/bxvip/android/commonlib/db/ext/DBU;->access$getDao$cp()Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;

    move-result-object v0

    return-object v0
.end method

.method private final setDao(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;)V
    .locals 0
    .param p1, "<set-?>"    # Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;

    .line 56
    invoke-static {p1}, Lco/bxvip/android/commonlib/db/ext/DBU;->access$setDao$cp(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;)V

    return-void
.end method


# virtual methods
.method public final daoKeyValue()Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 65
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;->getDao()Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;

    new-instance v1, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;

    invoke-direct {v1}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;-><init>()V

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;->setDao(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;)V

    .line 68
    :cond_0
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;->getDao()Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;->getDao()Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;

    new-instance v1, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;

    invoke-direct {v1}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;-><init>()V

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;->setDao(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;)V

    .line 61
    :cond_0
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/db/ext/DBU$Companion;->getDao()Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;->getValue$default(Lco/bxvip/android/commonlib/db/ext/KeyValueCacheDao;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method
