.class public final Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;
.super Ljava/lang/Object;
.source "Http.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u001c\u0010\t\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "co/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1",
        "Lokhttp3/Callback;",
        "(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;)V",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
        "lib-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;


# direct methods
.method constructor <init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;)V
    .locals 0
    .param p1, "$outer"    # Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;->this$0:Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKThreadPool()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;

    invoke-direct {v1, p0, p2, p1}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onFailure$1;-><init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;Ljava/io/IOException;Lokhttp3/Call;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 164
    :cond_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "response"    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 167
    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    sget-object v0, Lco/bxvip/android/commonlib/http/ext/Ku;->Companion:Lco/bxvip/android/commonlib/http/ext/Ku$Companion;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/http/ext/Ku$Companion;->getKThreadPool()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;

    invoke-direct {v1, p0, p2, p1}, Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1$onResponse$1;-><init>(Lco/bxvip/android/commonlib/http/ext/RequestWrapper$execute$1$1;Lokhttp3/Response;Lokhttp3/Call;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 239
    :cond_1
    return-void
.end method
