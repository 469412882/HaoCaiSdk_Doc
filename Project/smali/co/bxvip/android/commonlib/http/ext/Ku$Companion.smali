.class public final Lco/bxvip/android/commonlib/http/ext/Ku$Companion;
.super Ljava/lang/Object;
.source "Ku.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/android/commonlib/http/ext/Ku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ku.kt\nco/bxvip/android/commonlib/http/ext/Ku$Companion\n*L\n1#1,193:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010%\u001a\u00020\u0008J\u0006\u0010&\u001a\u00020\u000eJ\u0006\u0010\'\u001a\u00020\u0014J\u0006\u0010(\u001a\u00020 J\u0014\u0010)\u001a\u00020*2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020*0,R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R \u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR \u0010\r\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R \u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0019\u001a\u00020\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR \u0010\u001f\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006-"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/http/ext/Ku$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "getClient",
        "()Lokhttp3/OkHttpClient;",
        "setClient",
        "(Lokhttp3/OkHttpClient;)V",
        "mGson",
        "Lcom/google/gson/Gson;",
        "getMGson",
        "()Lcom/google/gson/Gson;",
        "setMGson",
        "(Lcom/google/gson/Gson;)V",
        "mHandler",
        "Landroid/os/Handler;",
        "getMHandler",
        "()Landroid/os/Handler;",
        "setMHandler",
        "(Landroid/os/Handler;)V",
        "maxTryCount",
        "",
        "getMaxTryCount",
        "()I",
        "setMaxTryCount",
        "(I)V",
        "threadPool",
        "Ljava/util/concurrent/Executor;",
        "getThreadPool",
        "()Ljava/util/concurrent/Executor;",
        "setThreadPool",
        "(Ljava/util/concurrent/Executor;)V",
        "getKClient",
        "getKGson",
        "getKHander",
        "getKThreadPool",
        "post",
        "",
        "r",
        "Lkotlin/Function0;",
        "lib-http"
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 35
    invoke-direct {p0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;-><init>()V

    return-void
.end method

.method private final getMGson()Lcom/google/gson/Gson;
    .locals 1

    .line 49
    invoke-static {}, Lco/bxvip/android/commonlib/http/ext/Ku;->access$getMGson$cp()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method private final setMGson(Lcom/google/gson/Gson;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/google/gson/Gson;

    .line 49
    invoke-static {p1}, Lco/bxvip/android/commonlib/http/ext/Ku;->access$setMGson$cp(Lcom/google/gson/Gson;)V

    return-void
.end method


# virtual methods
.method public final getClient()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 40
    invoke-static {}, Lco/bxvip/android/commonlib/http/ext/Ku;->access$getClient$cp()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final getKClient()Lokhttp3/OkHttpClient;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 52
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    const-class v0, Lco/bxvip/android/commonlib/http/ext/Ku;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 54
    .local v2, "$i$a$1$synchronized":I
    nop

    .line 62
    :try_start_0
    sget-object v3, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    .line 54
    nop

    .line 61
    nop

    .line 54
    nop

    .line 60
    nop

    .line 54
    nop

    .line 59
    nop

    .line 54
    nop

    .line 58
    nop

    .line 54
    nop

    .line 57
    nop

    .line 54
    nop

    .line 56
    nop

    .line 54
    new-instance v4, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v4}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 56
    new-instance v5, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;

    invoke-direct {v5}, Lco/bxvip/android/commonlib/http/intercepter/LogInterceptor;-><init>()V

    check-cast v5, Lokhttp3/Interceptor;

    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    .line 57
    new-instance v5, Lco/bxvip/android/commonlib/http/intercepter/CacheInterceptor;

    invoke-direct {v5}, Lco/bxvip/android/commonlib/http/intercepter/CacheInterceptor;-><init>()V

    check-cast v5, Lokhttp3/Interceptor;

    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    .line 58
    invoke-virtual {v4, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 59
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v1, v5, v6, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 60
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 61
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v3, v1}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->setClient(Lokhttp3/OkHttpClient;)V

    .line 63
    .end local v2    # "$i$a$1$synchronized":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 65
    :cond_0
    :goto_0
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    return-object v0
.end method

.method public final getKGson()Lcom/google/gson/Gson;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 91
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getMGson()Lcom/google/gson/Gson;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    const-class v0, Lco/bxvip/android/commonlib/http/ext/Ku;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 93
    .local v1, "$i$a$1$synchronized":I
    :try_start_0
    sget-object v2, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {v2, v3}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->setMGson(Lcom/google/gson/Gson;)V

    .line 94
    .end local v1    # "$i$a$1$synchronized":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 96
    :cond_0
    :goto_0
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-direct {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getMGson()Lcom/google/gson/Gson;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    return-object v0
.end method

.method public final getKHander()Landroid/os/Handler;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 78
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getMHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    const-class v0, Lco/bxvip/android/commonlib/http/ext/Ku;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 80
    .local v1, "$i$a$1$synchronized":I
    :try_start_0
    sget-object v2, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v3}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->setMHandler(Landroid/os/Handler;)V

    .line 81
    .end local v1    # "$i$a$1$synchronized":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 83
    :cond_0
    :goto_0
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getMHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    return-object v0
.end method

.method public final getKThreadPool()Ljava/util/concurrent/Executor;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 69
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getThreadPool()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    const-class v0, Lco/bxvip/android/commonlib/http/ext/Ku;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 71
    .local v1, "$i$a$1$synchronized":I
    :try_start_0
    sget-object v2, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->setThreadPool(Ljava/util/concurrent/Executor;)V

    .line 72
    .end local v1    # "$i$a$1$synchronized":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 74
    :cond_0
    :goto_0
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getThreadPool()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    return-object v0
.end method

.method public final getMHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 47
    invoke-static {}, Lco/bxvip/android/commonlib/http/ext/Ku;->access$getMHandler$cp()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxTryCount()I
    .locals 1

    .line 42
    invoke-static {}, Lco/bxvip/android/commonlib/http/ext/Ku;->access$getMaxTryCount$cp()I

    move-result v0

    return v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    invoke-static {}, Lco/bxvip/android/commonlib/http/ext/Ku;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getThreadPool()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 44
    invoke-static {}, Lco/bxvip/android/commonlib/http/ext/Ku;->access$getThreadPool$cp()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public final post(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "r"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    move-object v0, p0

    check-cast v0, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKHander()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lco/bxvip/android/commonlib/http/ext/KuKt$sam$Runnable$6a50f6b7;

    invoke-direct {v1, p1}, Lco/bxvip/android/commonlib/http/ext/KuKt$sam$Runnable$6a50f6b7;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public final setClient(Lokhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-static {p1}, Lco/bxvip/android/commonlib/http/ext/Ku;->access$setClient$cp(Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public final setMHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-static {p1}, Lco/bxvip/android/commonlib/http/ext/Ku;->access$setMHandler$cp(Landroid/os/Handler;)V

    return-void
.end method

.method public final setMaxTryCount(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 42
    invoke-static {p1}, Lco/bxvip/android/commonlib/http/ext/Ku;->access$setMaxTryCount$cp(I)V

    return-void
.end method

.method public final setThreadPool(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 44
    invoke-static {p1}, Lco/bxvip/android/commonlib/http/ext/Ku;->access$setThreadPool$cp(Ljava/util/concurrent/Executor;)V

    return-void
.end method
