.class public abstract Lkotlinx/coroutines/experimental/AbstractCoroutine;
.super Lkotlinx/coroutines/experimental/JobSupport;
.source "CoroutineScope.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;
.implements Lkotlinx/coroutines/experimental/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/JobSupport;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "TT;>;",
        "Lkotlinx/coroutines/experimental/CoroutineScope;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScope.kt\nkotlinx/coroutines/experimental/AbstractCoroutine\n*L\n1#1,128:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\u0008&\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u00020\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0018\u001a\u00020\tH\u0014J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0004J\u0013\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001fJ\u001d\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00028\u00002\u0006\u0010 \u001a\u00020\u0010H\u0004\u00a2\u0006\u0002\u0010!J\u000e\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\u001cJ\u0018\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u0010H\u0004J\u0008\u0010$\u001a\u00020%H\u0016R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\t8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00068TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u00020\tX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u000e\u00a8\u0006&"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/AbstractCoroutine;",
        "T",
        "Lkotlinx/coroutines/experimental/JobSupport;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "active",
        "",
        "(Z)V",
        "_context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "context",
        "context$annotations",
        "()V",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "defaultResumeMode",
        "",
        "getDefaultResumeMode",
        "()I",
        "ignoreRepeatedResume",
        "getIgnoreRepeatedResume",
        "()Z",
        "parentContext",
        "getParentContext",
        "createContext",
        "handleCompletionException",
        "",
        "closeException",
        "",
        "resume",
        "value",
        "(Ljava/lang/Object;)V",
        "mode",
        "(Ljava/lang/Object;I)V",
        "resumeWithException",
        "exception",
        "toString",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field private _context:Lkotlin/coroutines/experimental/CoroutineContext;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 55
    nop

    .line 57
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;-><init>(Z)V

    return-void
.end method

.method public static synthetic context$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected createContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 68
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->getParentContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 64
    iget-object v0, p0, Lkotlinx/coroutines/experimental/AbstractCoroutine;->_context:Lkotlin/coroutines/experimental/CoroutineContext;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->createContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    move-object v1, v0

    .line 64
    .local v1, "it":Lkotlin/coroutines/experimental/CoroutineContext;
    const/4 v2, 0x0

    .line 64
    .local v2, "$i$a$1$also":I
    iput-object v1, p0, Lkotlinx/coroutines/experimental/AbstractCoroutine;->_context:Lkotlin/coroutines/experimental/CoroutineContext;

    .line 64
    .end local v1    # "it":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v2    # "$i$a$1$also":I
    :goto_0
    return-object v0
.end method

.method protected getDefaultResumeMode()I
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method protected getIgnoreRepeatedResume()Z
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getParentContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final handleCompletionException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "closeException"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "closeException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method

.method public final resume(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->getDefaultResumeMode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->resume(Ljava/lang/Object;I)V

    return-void
.end method

.method protected final resume(Ljava/lang/Object;I)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 77
    :goto_0
    nop

    .line 78
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 80
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->updateState(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 88
    .end local v0    # "state":Ljava/lang/Object;
    :cond_0
    nop

    .line 77
    goto :goto_0

    .line 81
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Cancelled;

    if-eqz v1, :cond_2

    return-void

    .line 83
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->getIgnoreRepeatedResume()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    return-void

    .line 86
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already resumed, but got value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final resumeWithException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->getDefaultResumeMode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->resumeWithException(Ljava/lang/Throwable;I)V

    return-void
.end method

.method protected final resumeWithException(Ljava/lang/Throwable;I)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "mode"    # I

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    :goto_0
    nop

    .line 96
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 98
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v1, :cond_1

    .line 99
    new-instance v1, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    invoke-interface {v2}, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;->getIdempotentStart()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/experimental/JobSupport$CompletedExceptionally;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v1, p2}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->updateState(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 113
    .end local v0    # "state":Ljava/lang/Object;
    :cond_0
    nop

    .line 95
    goto :goto_0

    .line 101
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Cancelled;

    if-eqz v1, :cond_3

    .line 103
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$Cancelled;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/JobSupport$Cancelled;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V

    .line 104
    :cond_2
    return-void

    .line 107
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->getIgnoreRepeatedResume()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V

    .line 109
    return-void

    .line 111
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already resumed, but got exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 123
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "result":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lkotlinx/coroutines/experimental/JobSupport;->Companion:Lkotlinx/coroutines/experimental/JobSupport$Companion;

    invoke-virtual {v3, v0}, Lkotlinx/coroutines/experimental/JobSupport$Companion;->stateToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
