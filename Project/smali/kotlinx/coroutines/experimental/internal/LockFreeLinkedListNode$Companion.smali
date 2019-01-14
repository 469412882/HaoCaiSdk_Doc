.class final Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$Companion;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0012\u0012\u0008\u0012\u00060\u0005j\u0002`\u0006\u0012\u0004\u0012\u00020\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0007\u001a\u0012\u0012\u0008\u0012\u00060\u0005j\u0002`\u0006\u0012\u0004\u0012\u00020\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0008\u001a\u0014\u0012\u0008\u0012\u00060\u0005j\u0002`\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$Companion;",
        "",
        "()V",
        "NEXT",
        "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/experimental/internal/Node;",
        "PREV",
        "REMOVED_REF",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 77
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode$Companion;-><init>()V

    return-void
.end method
