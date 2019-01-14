.class public final Lco/bxvip/android/commonlib/utils/CommonInit;
.super Ljava/lang/Object;
.source "CommonInit.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/utils/CommonInit;",
        "",
        "()V",
        "ctx",
        "Landroid/app/Application;",
        "getCtx",
        "()Landroid/app/Application;",
        "setCtx",
        "(Landroid/app/Application;)V",
        "init",
        "",
        "app",
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
.field public static final INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

.field public static ctx:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/utils/CommonInit;-><init>()V

    sput-object v0, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCtx()Landroid/app/Application;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    sget-object v0, Lco/bxvip/android/commonlib/utils/CommonInit;->ctx:Landroid/app/Application;

    if-nez v0, :cond_0

    const-string v1, "ctx"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final init(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sput-object p1, Lco/bxvip/android/commonlib/utils/CommonInit;->ctx:Landroid/app/Application;

    .line 21
    return-void
.end method

.method public final setCtx(Landroid/app/Application;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sput-object p1, Lco/bxvip/android/commonlib/utils/CommonInit;->ctx:Landroid/app/Application;

    return-void
.end method
