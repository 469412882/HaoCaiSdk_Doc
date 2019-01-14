.class final Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/Send;
.implements Lkotlinx/coroutines/experimental/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SendSelect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/channels/Send;",
        "Lkotlinx/coroutines/experimental/DisposableHandle;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect\n*L\n1#1,880:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u00020\u00022\u00020\u00032\u00020\u0004B>\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0008\u0012\u001c\u0010\t\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00060\n\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0006H\u0016J\u0008\u0010\u0013\u001a\u00020\u0011H\u0016J\u0006\u0010\u0014\u001a\u00020\u0011J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0006H\u0016R+\u0010\t\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00060\n8\u0006X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\rR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;",
        "R",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/channels/Send;",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "pollResult",
        "",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V",
        "Lkotlin/jvm/functions/Function1;",
        "getPollResult",
        "()Ljava/lang/Object;",
        "completeResumeSend",
        "",
        "token",
        "dispose",
        "disposeOnSelect",
        "toString",
        "",
        "tryResumeSend",
        "idempotent",
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
.field public final block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pollResult:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final select:Lkotlinx/coroutines/experimental/selects/SelectInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "pollResult"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    nop

    .line 320
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;->pollResult:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;->select:Lkotlinx/coroutines/experimental/selects/SelectInstance;

    iput-object p3, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;->block:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public completeResumeSend(Ljava/lang/Object;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->SELECT_STARTED:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 326
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;->block:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;->select:Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-interface {v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/coroutines/experimental/CoroutinesKt;->startCoroutine(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V

    .line 327
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 334
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;->remove()Z

    .line 335
    return-void
.end method

.method public final disposeOnSelect()V
    .locals 2

    .line 330
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;->select:Lkotlinx/coroutines/experimental/selects/SelectInstance;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/experimental/DisposableHandle;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/experimental/DisposableHandle;)V

    .line 331
    return-void
.end method

.method public getPollResult()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 317
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;->pollResult:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendSelect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;->getPollResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;->select:Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryResumeSend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "idempotent"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 322
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel$SendSelect;->select:Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->SELECT_STARTED:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public unregister()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Replace with `dispose`"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "dispose()"
            imports = {}
        .end subannotation
    .end annotation

    .line 316
    invoke-static {p0}, Lkotlinx/coroutines/experimental/DisposableHandle$DefaultImpls;->unregister(Lkotlinx/coroutines/experimental/DisposableHandle;)V

    return-void
.end method
