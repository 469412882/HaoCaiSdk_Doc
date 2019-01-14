.class public Lco/bxvip/android/commonlib/http/HttpManagerCallback;
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
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002JU\u00101\u001a\u00020\r2K\u00102\u001aG\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\u0004H\u0007J2\u00103\u001a\u00020\r2(\u00102\u001a$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0014j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t`\u00150\u0013H\u0007J0\u00104\u001a\u00020\r2(\u00102\u001a$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0014j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t`\u00150\u0013J\u0016\u00105\u001a\u00020\r2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0013H\u0007J\u0016\u00106\u001a\u00020\r2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0013H\u0007J\u0016\u00107\u001a\u00020\r2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0013H\u0007J+\u00108\u001a\u00020\r2!\u00102\u001a\u001d\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020\r0\'H\u0007J\u0016\u00109\u001a\u00020\r2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020.0\u0013H\u0007Ra\u0010\u0003\u001aI\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R>\u0010\u0012\u001a&\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0014j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t`\u0015\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R>\u0010\u001a\u001a&\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0014j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t`\u0015\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017\"\u0004\u0008\u001c\u0010\u0019R\"\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0017\"\u0004\u0008\u001f\u0010\u0019R\"\u0010 \u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0017\"\u0004\u0008\"\u0010\u0019R\"\u0010#\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0017\"\u0004\u0008%\u0010\u0019R7\u0010&\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020\r\u0018\u00010\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\"\u0010-\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0017\"\u0004\u00080\u0010\u0019\u00a8\u0006:"
    }
    d2 = {
        "Lco/bxvip/android/commonlib/http/HttpManagerCallback;",
        "",
        "()V",
        "_onFailDoLog",
        "Lkotlin/Function3;",
        "Lokhttp3/Request;",
        "Lkotlin/ParameterName;",
        "name",
        "request",
        "",
        "message",
        "",
        "level",
        "",
        "get_onFailDoLog",
        "()Lkotlin/jvm/functions/Function3;",
        "set_onFailDoLog",
        "(Lkotlin/jvm/functions/Function3;)V",
        "_onFormBodyBefore",
        "Lkotlin/Function0;",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "get_onFormBodyBefore",
        "()Lkotlin/jvm/functions/Function0;",
        "set_onFormBodyBefore",
        "(Lkotlin/jvm/functions/Function0;)V",
        "_onRequestCommonHeader",
        "get_onRequestCommonHeader",
        "set_onRequestCommonHeader",
        "_onRequestUrl",
        "get_onRequestUrl",
        "set_onRequestUrl",
        "_onRequstSecondUrl",
        "get_onRequstSecondUrl",
        "set_onRequstSecondUrl",
        "_onResponse400000",
        "get_onResponse400000",
        "set_onResponse400000",
        "_onResponse450000",
        "Lkotlin/Function1;",
        "data",
        "get_onResponse450000",
        "()Lkotlin/jvm/functions/Function1;",
        "set_onResponse450000",
        "(Lkotlin/jvm/functions/Function1;)V",
        "_onSwitchUrl",
        "",
        "get_onSwitchUrl",
        "set_onSwitchUrl",
        "onFailDoLog",
        "listener",
        "onFormBodyBefore",
        "onRequestCommonHeaders",
        "onRequestSecondUrl",
        "onRequestUrl",
        "onResponse40000",
        "onResponse45000",
        "onSwitchUrl",
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
.field private _onFailDoLog:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lokhttp3/Request;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _onFormBodyBefore:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _onRequestCommonHeader:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _onRequestUrl:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _onRequstSecondUrl:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _onResponse400000:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _onResponse450000:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _onSwitchUrl:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get_onFailDoLog()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lokhttp3/Request;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 40
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onFailDoLog:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final get_onFormBodyBefore()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 35
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onFormBodyBefore:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final get_onRequestCommonHeader()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 36
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onRequestCommonHeader:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final get_onRequestUrl()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 33
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onRequestUrl:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final get_onRequstSecondUrl()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 34
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onRequstSecondUrl:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final get_onResponse400000()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 38
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onResponse400000:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final get_onResponse450000()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 39
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onResponse450000:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final get_onSwitchUrl()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 37
    iget-object v0, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onSwitchUrl:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final declared-synchronized onFailDoLog(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lokhttp3/Request;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onFailDoLog:Lkotlin/jvm/functions/Function3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 77
    .end local p1    # "listener":Lkotlin/jvm/functions/Function3;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onFormBodyBefore(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onFormBodyBefore:Lkotlin/jvm/functions/Function0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 43
    .end local p1    # "listener":Lkotlin/jvm/functions/Function0;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onRequestCommonHeaders(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onRequestCommonHeader:Lkotlin/jvm/functions/Function0;

    .line 59
    return-void
.end method

.method public final declared-synchronized onRequestSecondUrl(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onRequstSecondUrl:Lkotlin/jvm/functions/Function0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 67
    .end local p1    # "listener":Lkotlin/jvm/functions/Function0;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onRequestUrl(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onRequestUrl:Lkotlin/jvm/functions/Function0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 62
    .end local p1    # "listener":Lkotlin/jvm/functions/Function0;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onResponse40000(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function0;
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

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onResponse400000:Lkotlin/jvm/functions/Function0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 48
    .end local p1    # "listener":Lkotlin/jvm/functions/Function0;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onResponse45000(Lkotlin/jvm/functions/Function1;)V
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
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onResponse450000:Lkotlin/jvm/functions/Function1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    .end local p1    # "listener":Lkotlin/jvm/functions/Function1;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onSwitchUrl(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onSwitchUrl:Lkotlin/jvm/functions/Function0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 72
    .end local p1    # "listener":Lkotlin/jvm/functions/Function0;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final set_onFailDoLog(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lokhttp3/Request;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onFailDoLog:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public final set_onFormBodyBefore(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onFormBodyBefore:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final set_onRequestCommonHeader(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onRequestCommonHeader:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final set_onRequestUrl(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onRequestUrl:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final set_onRequstSecondUrl(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onRequstSecondUrl:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final set_onResponse400000(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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

    .line 38
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onResponse400000:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final set_onResponse450000(Lkotlin/jvm/functions/Function1;)V
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
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onResponse450000:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final set_onSwitchUrl(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lco/bxvip/android/commonlib/http/HttpManagerCallback;->_onSwitchUrl:Lkotlin/jvm/functions/Function0;

    return-void
.end method
