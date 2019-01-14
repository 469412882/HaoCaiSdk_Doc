.class public Lco/bxvip/android/commonlib/http/CountUrlCallBack;
.super Ljava/lang/Object;
.source "HttpManagerCallback.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0011\u001a\u00020\t2#\u0010\u0012\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004J+\u0010\u0013\u001a\u00020\t2#\u0010\u0012\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004R9\u0010\u0003\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR9\u0010\u000e\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/http/CountUrlCallBack;",
        "",
        "()V",
        "_onFailUrl",
        "Lkotlin/Function1;",
        "Lokhttp3/Request;",
        "Lkotlin/ParameterName;",
        "name",
        "req",
        "",
        "get_onFailUrl",
        "()Lkotlin/jvm/functions/Function1;",
        "set_onFailUrl",
        "(Lkotlin/jvm/functions/Function1;)V",
        "_onSucceedUrl",
        "get_onSucceedUrl",
        "set_onSucceedUrl",
        "onFailUrl",
        "listener",
        "onSucceedUrl",
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
.field private _onFailUrl:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Request;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _onSucceedUrl:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Request;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get_onFailUrl()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lokhttp3/Request;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 83
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/CountUrlCallBack;->_onFailUrl:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final get_onSucceedUrl()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lokhttp3/Request;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 84
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/CountUrlCallBack;->_onSucceedUrl:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final onFailUrl(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Request;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/CountUrlCallBack;->_onFailUrl:Lkotlin/jvm/functions/Function1;

    .line 88
    return-void
.end method

.method public final onSucceedUrl(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Request;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/CountUrlCallBack;->_onSucceedUrl:Lkotlin/jvm/functions/Function1;

    .line 92
    return-void
.end method

.method public final set_onFailUrl(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Request;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/CountUrlCallBack;->_onFailUrl:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final set_onSucceedUrl(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Request;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/CountUrlCallBack;->_onSucceedUrl:Lkotlin/jvm/functions/Function1;

    return-void
.end method
