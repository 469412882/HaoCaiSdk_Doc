.class public final Lco/bxvip/android/commonlib/http/ext/Ku;
.super Ljava/lang/Object;
.source "Ku.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/android/commonlib/http/ext/Ku$Companion;
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
        "Lco/bxvip/android/commonlib/http/ext/Ku;",
        "",
        "()V",
        "Companion",
        "lib-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "HttpForTag"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile client:Lokhttp3/OkHttpClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile mGson:Lcom/google/gson/Gson;

.field private static volatile mHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile maxTryCount:I

.field private static volatile threadPool:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    .line 37
    const-string v0, "HttpForTag"

    sput-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x3

    sput v0, Lco/bxvip/android/commonlib/http/ext/Ku;->maxTryCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getClient$cp()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 33
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static final synthetic access$getMGson$cp()Lcom/google/gson/Gson;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 33
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->mGson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static final synthetic access$getMHandler$cp()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 33
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$getMaxTryCount$cp()I
    .locals 1

    .line 33
    sget v0, Lco/bxvip/android/commonlib/http/ext/Ku;->maxTryCount:I

    return v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getThreadPool$cp()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 33
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->threadPool:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static final synthetic access$setClient$cp(Lokhttp3/OkHttpClient;)V
    .locals 0
    .param p0, "<set-?>"    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 33
    sput-object p0, Lco/bxvip/android/commonlib/http/ext/Ku;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$setMGson$cp(Lcom/google/gson/Gson;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 33
    sput-object p0, Lco/bxvip/android/commonlib/http/ext/Ku;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static final synthetic access$setMHandler$cp(Landroid/os/Handler;)V
    .locals 0
    .param p0, "<set-?>"    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 33
    sput-object p0, Lco/bxvip/android/commonlib/http/ext/Ku;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setMaxTryCount$cp(I)V
    .locals 0
    .param p0, "<set-?>"    # I

    .line 33
    sput p0, Lco/bxvip/android/commonlib/http/ext/Ku;->maxTryCount:I

    return-void
.end method

.method public static final synthetic access$setThreadPool$cp(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 33
    sput-object p0, Lco/bxvip/android/commonlib/http/ext/Ku;->threadPool:Ljava/util/concurrent/Executor;

    return-void
.end method
