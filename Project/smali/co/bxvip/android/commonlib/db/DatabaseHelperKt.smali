.class public final Lco/bxvip/android/commonlib/db/DatabaseHelperKt;
.super Ljava/lang/Object;
.source "DatabaseHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "database",
        "Lco/bxvip/android/commonlib/db/DatabaseHelper;",
        "getDatabase",
        "()Lco/bxvip/android/commonlib/db/DatabaseHelper;",
        "android-support"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public static final getDatabase()Lco/bxvip/android/commonlib/db/DatabaseHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 111
    sget-object v0, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils;->Companion:Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/db/utils/DBInnerUtils$Companion;->getDbInstance()Lco/bxvip/android/commonlib/db/DatabaseHelper;

    move-result-object v0

    return-object v0
.end method
