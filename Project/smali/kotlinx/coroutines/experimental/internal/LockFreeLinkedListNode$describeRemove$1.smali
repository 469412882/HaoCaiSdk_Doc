.class public final Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$describeRemove$1;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->describeRemove()Lkotlinx/coroutines/experimental/internal/AtomicDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0010\r\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\u000e\u001a\u00020\u000cH\u0014J \u0010\u000f\u001a\u00020\u00102\n\u0010\r\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u000e\u001a\u00060\u0004j\u0002`\u0005H\u0014J\"\u0010\u0011\u001a\u0004\u0018\u00010\u000c2\n\u0010\r\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u000e\u001a\u00060\u0004j\u0002`\u0005H\u0014J \u0010\u0012\u001a\u00020\u00132\n\u0010\r\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u000e\u001a\u00060\u0004j\u0002`\u0005H\u0014R\u001c\u0010\u0003\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R$\u0010\u0008\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005@\u0016X\u0094\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0007\"\u0004\u0008\n\u0010\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "kotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$describeRemove$1",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;",
        "(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V",
        "affectedNode",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/internal/Node;",
        "getAffectedNode",
        "()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "originalNext",
        "getOriginalNext",
        "setOriginalNext",
        "failure",
        "",
        "affected",
        "next",
        "finishOnSuccess",
        "",
        "onPrepare",
        "updatedNext",
        "Lkotlinx/coroutines/experimental/internal/Removed;",
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
.field private originalNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 0
    .param p1, "$outer"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$describeRemove$1;->this$0:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$AbstractAtomicDesc;-><init>()V

    return-void
.end method


# virtual methods
.method protected failure(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "affected"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "next"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    instance-of v0, p2, Lkotlinx/coroutines/experimental/internal/Removed;

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->getALREADY_REMOVED()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected finishOnSuccess(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 1
    .param p1, "affected"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$describeRemove$1;->this$0:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    invoke-static {v0, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$finishRemove(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    return-void
.end method

.method protected getAffectedNode()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 250
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$describeRemove$1;->this$0:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-object v0
.end method

.method protected getOriginalNext()Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 251
    iget-object v0, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$describeRemove$1;->originalNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-object v0
.end method

.method protected onPrepare(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 1
    .param p1, "affected"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$describeRemove$1;->setOriginalNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V

    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOriginalNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 251
    iput-object p1, p0, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$describeRemove$1;->originalNext:Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    return-void
.end method

.method public bridge synthetic updatedNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$describeRemove$1;->updatedNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/internal/Removed;

    move-result-object p1

    return-object p1
.end method

.method protected updatedNext(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/internal/Removed;
    .locals 1
    .param p1, "affected"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "next"    # Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-static {p2}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->access$removed(Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/experimental/internal/Removed;

    move-result-object v0

    return-object v0
.end method
