.class final Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;
.super Lkotlinx/coroutines/experimental/channels/Receive;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReceiveSelect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/channels/Receive<",
        "TE;>;",
        "Lkotlinx/coroutines/experimental/DisposableHandle;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u0000*\u0004\u0008\u0001\u0010\u0001*\u0006\u0008\u0002\u0010\u0002 \u00002\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u00020\u0004BD\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006\u0012$\u0010\u0007\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00018\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\nH\u0017J\u0008\u0010\u0012\u001a\u00020\u0010H\u0016J\u0006\u0010\u0013\u001a\u00020\u0010J\u0014\u0010\u0014\u001a\u00020\u00102\n\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J!\u0010\u0019\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001a\u001a\u00028\u00022\u0008\u0010\u001b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0002\u0010\u001cR3\u0010\u0007\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00018\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00088\u0006X\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;",
        "R",
        "E",
        "Lkotlinx/coroutines/experimental/channels/Receive;",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "nullOnClose",
        "",
        "(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;Z)V",
        "Lkotlin/jvm/functions/Function2;",
        "completeResumeReceive",
        "",
        "token",
        "dispose",
        "removeOnSelectCompletion",
        "resumeReceiveClosed",
        "closed",
        "Lkotlinx/coroutines/experimental/channels/Closed;",
        "toString",
        "",
        "tryResumeReceive",
        "value",
        "idempotent",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
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
.field public final block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TE;",
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

.field public final nullOnClose:Z
    .annotation build Lkotlin/jvm/JvmField;
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

.field final synthetic this$0:Lkotlinx/coroutines/experimental/channels/AbstractChannel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/channels/AbstractChannel;Lkotlinx/coroutines/experimental/selects/SelectInstance;Lkotlin/jvm/functions/Function2;Z)V
    .locals 1
    .param p1, "$outer"    # Lkotlinx/coroutines/experimental/channels/AbstractChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .param p4, "nullOnClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    iput-object p1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->this$0:Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    .line 761
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/Receive;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/experimental/selects/SelectInstance;

    iput-object p3, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->block:Lkotlin/jvm/functions/Function2;

    iput-boolean p4, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->nullOnClose:Z

    return-void
.end method


# virtual methods
.method public completeResumeReceive(Ljava/lang/Object;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 768
    .local v0, "value":Ljava/lang/Object;
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->block:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-interface {v2}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lkotlin/coroutines/experimental/CoroutinesKt;->startCoroutine(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 769
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 785
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->remove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->this$0:Lkotlinx/coroutines/experimental/channels/AbstractChannel;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/AbstractChannel;->onCancelledReceive()V

    .line 787
    :cond_0
    return-void
.end method

.method public final removeOnSelectCompletion()V
    .locals 2

    .line 781
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/experimental/selects/SelectInstance;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/experimental/DisposableHandle;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/experimental/DisposableHandle;)V

    .line 782
    return-void
.end method

.method public resumeReceiveClosed(Lkotlinx/coroutines/experimental/channels/Closed;)V
    .locals 3
    .param p1, "closed"    # Lkotlinx/coroutines/experimental/channels/Closed;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/channels/Closed<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "closed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/experimental/selects/SelectInstance;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p1, Lkotlinx/coroutines/experimental/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->nullOnClose:Z

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->block:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-interface {v2}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lkotlin/coroutines/experimental/CoroutinesKt;->startCoroutine(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/channels/Closed;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->resumeSelectWithException(Ljava/lang/Throwable;I)V

    .line 778
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveSelect["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",nullOnClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->nullOnClose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryResumeReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "idempotent"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 763
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/experimental/selects/SelectInstance;

    invoke-interface {v0, p2}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->NULL_VALUE:Ljava/lang/Object;

    goto :goto_0

    :cond_1
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

    .line 757
    invoke-static {p0}, Lkotlinx/coroutines/experimental/DisposableHandle$DefaultImpls;->unregister(Lkotlinx/coroutines/experimental/DisposableHandle;)V

    return-void
.end method
