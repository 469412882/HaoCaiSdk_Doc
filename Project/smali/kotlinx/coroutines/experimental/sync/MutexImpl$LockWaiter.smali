.class abstract Lkotlinx/coroutines/experimental/sync/MutexImpl$LockWaiter;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.source "Mutex.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LockWaiter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\"\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004H&J\u0006\u0010\t\u001a\u00020\u0007J\n\u0010\n\u001a\u0004\u0018\u00010\u0004H&R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/sync/MutexImpl$LockWaiter;",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "owner",
        "",
        "(Ljava/lang/Object;)V",
        "completeResumeLockWaiter",
        "",
        "token",
        "dispose",
        "tryResumeLockWaiter",
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
.field public final owner:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 373
    nop

    .line 375
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockWaiter;->owner:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract completeResumeLockWaiter(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final dispose()V
    .locals 0

    .line 376
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/sync/MutexImpl$LockWaiter;->remove()Z

    return-void
.end method

.method public abstract tryResumeLockWaiter()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
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

    .line 373
    invoke-static {p0}, Lkotlinx/coroutines/experimental/DisposableHandle$DefaultImpls;->unregister(Lkotlinx/coroutines/experimental/DisposableHandle;)V

    return-void
.end method
