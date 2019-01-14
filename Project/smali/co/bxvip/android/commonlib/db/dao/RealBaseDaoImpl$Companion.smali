.class public final Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;
.super Ljava/lang/Object;
.source "RealBaseDaoImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;",
        "",
        "()V",
        "executorService",
        "Ljava/util/concurrent/ExecutorService;",
        "getExecutorService",
        "()Ljava/util/concurrent/ExecutorService;",
        "setExecutorService",
        "(Ljava/util/concurrent/ExecutorService;)V",
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

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 495
    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getExecutorService$p(Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "$this"    # Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 495
    invoke-direct {p0}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setExecutorService$p(Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p0, "$this"    # Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;
    .param p1, "<set-?>"    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 495
    invoke-direct {p0, p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl$Companion;->setExecutorService(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private final getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 496
    invoke-static {}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->access$getExecutorService$cp()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private final setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/concurrent/ExecutorService;

    .line 496
    invoke-static {p1}, Lco/bxvip/android/commonlib/db/dao/RealBaseDaoImpl;->access$setExecutorService$cp(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
