.class final Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;
.super Lkotlinx/coroutines/experimental/internal/AtomicOp;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AtomicSelectOp"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000c\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\n\u0010\r\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u000e\u001a\u0004\u0018\u00010\nR\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;",
        "Lkotlinx/coroutines/experimental/internal/AtomicOp;",
        "desc",
        "Lkotlinx/coroutines/experimental/internal/AtomicDesc;",
        "activate",
        "",
        "(Lkotlinx/coroutines/experimental/JobSupport;Lkotlinx/coroutines/experimental/internal/AtomicDesc;Z)V",
        "complete",
        "",
        "affected",
        "",
        "failure",
        "completeSelect",
        "prepare",
        "prepareIfNotSelected",
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
.field public final activate:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final desc:Lkotlinx/coroutines/experimental/internal/AtomicDesc;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/experimental/JobSupport;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/JobSupport;Lkotlinx/coroutines/experimental/internal/AtomicDesc;Z)V
    .locals 1
    .param p1, "$outer"    # Lkotlinx/coroutines/experimental/JobSupport;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "desc"    # Lkotlinx/coroutines/experimental/internal/AtomicDesc;
    .param p3, "activate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/internal/AtomicDesc;",
            "Z)V"
        }
    .end annotation

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    iput-object p1, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->this$0:Lkotlinx/coroutines/experimental/JobSupport;

    .line 499
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/AtomicOp;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->desc:Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    iput-boolean p3, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->activate:Z

    return-void
.end method

.method private final completeSelect(Ljava/lang/Object;)V
    .locals 5
    .param p1, "failure"    # Ljava/lang/Object;

    .line 533
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 534
    .local v0, "success":Z
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->this$0:Lkotlinx/coroutines/experimental/JobSupport;

    invoke-static {v1}, Lkotlinx/coroutines/experimental/JobSupport;->access$get_state$p(Lkotlinx/coroutines/experimental/JobSupport;)Ljava/lang/Object;

    move-result-object v1

    .line 535
    .local v1, "state":Ljava/lang/Object;
    nop

    .line 536
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;

    if-ne v1, v2, :cond_2

    .line 537
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->activate:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyActive$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyNew$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v2

    .line 538
    .local v2, "update":Lkotlinx/coroutines/experimental/Empty;
    :goto_1
    sget-object v3, Lkotlinx/coroutines/experimental/JobSupport;->Companion:Lkotlinx/coroutines/experimental/JobSupport$Companion;

    invoke-static {v3}, Lkotlinx/coroutines/experimental/JobSupport$Companion;->access$getSTATE$p(Lkotlinx/coroutines/experimental/JobSupport$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->this$0:Lkotlinx/coroutines/experimental/JobSupport;

    invoke-virtual {v3, v4, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 539
    if-eqz v0, :cond_4

    iget-object v3, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->this$0:Lkotlinx/coroutines/experimental/JobSupport;

    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/JobSupport;->onStart()V

    .line 539
    .end local v2    # "update":Lkotlinx/coroutines/experimental/Empty;
    goto :goto_3

    .line 542
    :cond_2
    instance-of v2, v1, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    if-eqz v2, :cond_4

    .line 543
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    iget-object v2, v2, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->_active:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;

    if-ne v2, v3, :cond_4

    .line 544
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->activate:Z

    if-eqz v2, :cond_3

    sget-object v2, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->ACTIVE_STATE:Lkotlinx/coroutines/experimental/internal/Symbol;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 545
    .local v2, "update":Lkotlinx/coroutines/experimental/internal/Symbol;
    :goto_2
    sget-object v3, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->ACTIVE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 546
    if-eqz v0, :cond_4

    iget-object v3, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->this$0:Lkotlinx/coroutines/experimental/JobSupport;

    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/JobSupport;->onStart()V

    .line 550
    .end local v2    # "update":Lkotlinx/coroutines/experimental/internal/Symbol;
    :cond_4
    :goto_3
    nop

    .line 552
    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "affected"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "failure"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 503
    invoke-direct {p0, p2}, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->completeSelect(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->desc:Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/AtomicOp;

    invoke-virtual {v0, v1, p2}, Lkotlinx/coroutines/experimental/internal/AtomicDesc;->complete(Lkotlinx/coroutines/experimental/internal/AtomicOp;Ljava/lang/Object;)V

    .line 505
    return-void
.end method

.method public prepare()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 500
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->prepareIfNotSelected()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->desc:Lkotlinx/coroutines/experimental/internal/AtomicDesc;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/AtomicOp;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/experimental/internal/AtomicDesc;->prepare(Lkotlinx/coroutines/experimental/internal/AtomicOp;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final prepareIfNotSelected()Ljava/lang/Object;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 508
    :goto_0
    nop

    .line 509
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->this$0:Lkotlinx/coroutines/experimental/JobSupport;

    invoke-static {v0}, Lkotlinx/coroutines/experimental/JobSupport;->access$get_state$p(Lkotlinx/coroutines/experimental/JobSupport;)Ljava/lang/Object;

    move-result-object v0

    .line 510
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 511
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 512
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    iget-object v2, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->this$0:Lkotlinx/coroutines/experimental/JobSupport;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 513
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->access$getEmptyNew$p()Lkotlinx/coroutines/experimental/Empty;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 514
    sget-object v1, Lkotlinx/coroutines/experimental/JobSupport;->Companion:Lkotlinx/coroutines/experimental/JobSupport$Companion;

    invoke-static {v1}, Lkotlinx/coroutines/experimental/JobSupport$Companion;->access$getSTATE$p(Lkotlinx/coroutines/experimental/JobSupport$Companion;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    iget-object v3, p0, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;->this$0:Lkotlinx/coroutines/experimental/JobSupport;

    invoke-virtual {v1, v3, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v2

    .line 516
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    if-eqz v1, :cond_8

    .line 517
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->_active:Ljava/lang/Object;

    .line 518
    .local v1, "active":Ljava/lang/Object;
    nop

    .line 519
    if-nez v1, :cond_3

    .line 520
    sget-object v3, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->ACTIVE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0, v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v2

    .line 522
    :cond_3
    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/experimental/JobSupport$AtomicSelectOp;

    if-ne v1, v3, :cond_4

    return-object v2

    .line 523
    :cond_4
    instance-of v2, v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .end local v1    # "active":Ljava/lang/Object;
    :cond_5
    nop

    .line 528
    .end local v0    # "state":Ljava/lang/Object;
    :cond_6
    :goto_1
    nop

    .line 508
    goto :goto_0

    .line 524
    .restart local v0    # "state":Ljava/lang/Object;
    .restart local v1    # "active":Ljava/lang/Object;
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 527
    .end local v1    # "active":Ljava/lang/Object;
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
