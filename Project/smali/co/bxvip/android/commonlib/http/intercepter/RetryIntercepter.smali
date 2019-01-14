.class public final Lco/bxvip/android/commonlib/http/intercepter/RetryIntercepter;
.super Ljava/lang/Object;
.source "RetryIntercepter.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRetryIntercepter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryIntercepter.kt\nco/bxvip/android/commonlib/http/intercepter/RetryIntercepter\n*L\n1#1,28:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/http/intercepter/RetryIntercepter;",
        "Lokhttp3/Interceptor;",
        "maxRetry",
        "",
        "(I)V",
        "getMaxRetry",
        "()I",
        "setMaxRetry",
        "retryNum",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
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
.field private maxRetry:I

.field private retryNum:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxRetry"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lco/bxvip/android/commonlib/http/intercepter/RetryIntercepter;->maxRetry:I

    return-void
.end method


# virtual methods
.method public final getMaxRetry()I
    .locals 1

    .line 12
    iget v0, p0, Lco/bxvip/android/commonlib/http/intercepter/RetryIntercepter;->maxRetry:I

    return v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 19
    .local v0, "request":Lokhttp3/Request;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lco/bxvip/android/commonlib/http/intercepter/RetryIntercepter;->retryNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 20
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 21
    .local v1, "response":Lokhttp3/Response;
    :goto_0
    const-string v2, "response"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lco/bxvip/android/commonlib/http/intercepter/RetryIntercepter;->retryNum:I

    iget v3, p0, Lco/bxvip/android/commonlib/http/intercepter/RetryIntercepter;->maxRetry:I

    if-ge v2, v3, :cond_0

    .line 22
    iget v2, p0, Lco/bxvip/android/commonlib/http/intercepter/RetryIntercepter;->retryNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lco/bxvip/android/commonlib/http/intercepter/RetryIntercepter;->retryNum:I

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lco/bxvip/android/commonlib/http/intercepter/RetryIntercepter;->retryNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 24
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 21
    goto :goto_0

    .line 26
    :cond_0
    return-object v1
.end method

.method public final setMaxRetry(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 12
    iput p1, p0, Lco/bxvip/android/commonlib/http/intercepter/RetryIntercepter;->maxRetry:I

    return-void
.end method
