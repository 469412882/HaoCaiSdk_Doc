.class public final Lkotlinx/coroutines/experimental/CoroutineContextKt;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/experimental/CoroutineContextKt\n*L\n1#1,125:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007\u001a\u0008\u0010\t\u001a\u00020\nH\u0000\u001a\u0012\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u0001\u001a\u0012\u0010\r\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0001\u001a*\u0010\u000e\u001a\u0002H\u000f\"\u0004\u0008\u0000\u0010\u000f2\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u0011H\u0080\u0008\u00a2\u0006\u0002\u0010\u0012\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000*8\u0008\u0007\u0010\u0013\"\u00020\u00142\u00020\u0014B*\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u001c\u0008\u0018\u0012\u0018\u0008\u000bB\u0014\u0008\u0019\u0012\u0006\u0008\u001a\u0012\u0002\u0008\u000c\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "COROUTINE_ID",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "DEBUG",
        "",
        "DEBUG_PROPERTY_NAME",
        "",
        "newCoroutineContext",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "context",
        "resetCoroutineId",
        "",
        "restoreContext",
        "oldName",
        "updateContext",
        "withCoroutineContext",
        "T",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "Here",
        "Lkotlinx/coroutines/experimental/Unconfined;",
        "Lkotlin/Deprecated;",
        "message",
        "`Here` was renamed to `Unconfined`",
        "replaceWith",
        "Lkotlin/ReplaceWith;",
        "imports",
        "expression",
        "Unconfined",
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
.field private static final COROUTINE_ID:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final DEBUG:Z

.field private static final DEBUG_PROPERTY_NAME:Ljava/lang/String; = "kotlinx.coroutines.debug"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    .line 25
    .local v0, "$i$a$1$run":I
    nop

    .line 26
    const-string v1, "kotlinx.coroutines.debug"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xddf

    if-eq v3, v4, :cond_3

    const v4, 0x1ad6f

    if-eq v3, v4, :cond_2

    const v4, 0x2dddaf

    if-eq v3, v4, :cond_1

    goto :goto_3

    :cond_1
    const-string v3, "auto"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 28
    :goto_0
    const-class v3, Lkotlinx/coroutines/experimental/CoroutineId;

    goto :goto_2

    .line 27
    :cond_2
    const-string v3, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 30
    goto :goto_2

    .line 27
    :cond_3
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_4
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 29
    :goto_1
    const/4 v2, 0x1

    .line 32
    .end local v0    # "$i$a$1$run":I
    .end local v1    # "value":Ljava/lang/String;
    :goto_2
    nop

    .line 25
    sput-boolean v2, Lkotlinx/coroutines/experimental/CoroutineContextKt;->DEBUG:Z

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lkotlinx/coroutines/experimental/CoroutineContextKt;->COROUTINE_ID:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 31
    .restart local v0    # "$i$a$1$run":I
    .restart local v1    # "value":Ljava/lang/String;
    :cond_5
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "kotlinx.coroutines.debug"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' has unrecognized value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public static synthetic Here$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "`Here` was renamed to `Unconfined`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Unconfined"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final newCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 3
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-boolean v0, Lkotlinx/coroutines/experimental/CoroutineContextKt;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/experimental/CoroutineId;

    sget-object v1, Lkotlinx/coroutines/experimental/CoroutineContextKt;->COROUTINE_ID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/experimental/CoroutineId;-><init>(J)V

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {p0, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final resetCoroutineId()V
    .locals 3

    .line 39
    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineContextKt;->COROUTINE_ID:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 40
    return-void
.end method

.method public static final restoreContext(Ljava/lang/String;)V
    .locals 1
    .param p0, "oldName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 118
    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public static final updateContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-boolean v0, Lkotlinx/coroutines/experimental/CoroutineContextKt;->DEBUG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 102
    :cond_0
    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineId;->Key:Lkotlinx/coroutines/experimental/CoroutineId$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/CoroutineId;

    if-eqz v0, :cond_2

    .line 103
    .local v0, "newId":Lkotlinx/coroutines/experimental/CoroutineId;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 104
    .local v1, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "oldName":Ljava/lang/String;
    sget-object v3, Lkotlinx/coroutines/experimental/CoroutineName;->Key:Lkotlinx/coroutines/experimental/CoroutineName$Key;

    check-cast v3, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v3}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/experimental/CoroutineName;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/CoroutineName;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "coroutine"

    .line 106
    .local v3, "coroutineName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0xa

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v5

    .line 106
    .local v4, "$receiver":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 107
    .local v6, "$i$a$1$buildString":I
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v7, " @"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/16 v7, 0x23

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/CoroutineId;->getId()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .end local v4    # "$receiver":Ljava/lang/StringBuilder;
    .end local v6    # "$i$a$1$buildString":I
    nop

    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 113
    return-object v2

    .line 102
    .end local v0    # "newId":Lkotlinx/coroutines/experimental/CoroutineId;
    .end local v1    # "currentThread":Ljava/lang/Thread;
    .end local v2    # "oldName":Ljava/lang/String;
    .end local v3    # "coroutineName":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public static final withCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 4
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    .local v0, "$i$f$withCoroutineContext":I
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {p0}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "oldName":Ljava/lang/String;
    nop

    .line 93
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 95
    invoke-static {v1}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v1}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreContext(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method
