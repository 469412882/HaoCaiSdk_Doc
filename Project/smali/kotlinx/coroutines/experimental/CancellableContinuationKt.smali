.class public final Lkotlinx/coroutines/experimental/CancellableContinuationKt;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellableContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/experimental/CancellableContinuationKt\n*L\n1#1,279:1\n124#1,6:280\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a=\u0010\u0004\u001a\u0002H\u0005\"\u0004\u0008\u0000\u0010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u001a\u0008\u0004\u0010\u0008\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\n\u0012\u0004\u0012\u00020\u000b0\tH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u001a\u0016\u0010\r\u001a\u00020\u000e*\u0006\u0012\u0002\u0008\u00030\n2\u0006\u0010\u000f\u001a\u00020\u0010\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0011"
    }
    d2 = {
        "MODE_DIRECT",
        "",
        "MODE_DISPATCHED",
        "MODE_UNDISPATCHED",
        "suspendCancellableCoroutine",
        "T",
        "holdCancellability",
        "",
        "block",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/experimental/CancellableContinuation;",
        "",
        "(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "removeOnCancel",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "node",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field public static final MODE_DIRECT:I = 0x2

.field public static final MODE_DISPATCHED:I = 0x0

.field public static final MODE_UNDISPATCHED:I = 0x1


# direct methods
.method public static final removeOnCancel(Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 1
    .param p0, "$receiver"    # Lkotlinx/coroutines/experimental/CancellableContinuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "node"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CancellableContinuation<",
            "*>;",
            "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
            ")",
            "Lkotlinx/coroutines/experimental/DisposableHandle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lkotlinx/coroutines/experimental/RemoveOnCancel;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/experimental/RemoveOnCancel;-><init>(Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/experimental/CancellableContinuation;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v0

    return-object v0
.end method

.method public static final suspendCancellableCoroutine(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p0, "holdCancellability"    # Z
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/experimental/CancellableContinuation<",
            "-TT;>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 124
    .local v0, "$i$a$1$suspendCoroutineOrReturn":I
    const/4 v1, 0x0

    .line 124
    .local v1, "$i$f$suspendCancellableCoroutine":I
    const-string v2, "block"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$continuation"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-static {p2}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    .line 125
    .local v2, "cont":Lkotlin/coroutines/experimental/Continuation;
    new-instance v3, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;Z)V

    .line 126
    .local v3, "cancellable":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    if-nez p0, :cond_0

    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->initCancellability()V

    .line 127
    :cond_0
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 124
    .end local v0    # "$i$a$1$suspendCoroutineOrReturn":I
    .end local v2    # "cont":Lkotlin/coroutines/experimental/Continuation;
    .end local v3    # "cancellable":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    nop

    .line 129
    return-object v0
.end method

.method public static bridge synthetic suspendCancellableCoroutine$default(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "holdCancellability"    # Z
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 121
    const/4 p0, 0x0

    .line 121
    .local p3, "$i$f$suspendCancellableCoroutine":I
    :cond_0
    const-string p4, "block"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$continuation"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-static {p2}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object p4

    .line 280
    .local p4, "cont":Lkotlin/coroutines/experimental/Continuation;
    const/4 v0, 0x0

    .line 281
    .local v0, "$i$a$1$suspendCoroutineOrReturn":I
    new-instance v1, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;

    const/4 v2, 0x1

    invoke-direct {v1, p4, v2}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/experimental/Continuation;Z)V

    .line 282
    .local v1, "cancellable":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    if-nez p0, :cond_1

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->initCancellability()V

    .line 283
    :cond_1
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p4

    .line 280
    .end local v0    # "$i$a$1$suspendCoroutineOrReturn":I
    .end local v1    # "cancellable":Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
    .end local p4    # "cont":Lkotlin/coroutines/experimental/Continuation;
    nop

    .line 285
    return-object p4
.end method
