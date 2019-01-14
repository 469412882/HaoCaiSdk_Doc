.class public final Lorg/jetbrains/anko/coroutines/experimental/Ref;
.super Ljava/lang/Object;
.source "weakReferenceSupport.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nweakReferenceSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 weakReferenceSupport.kt\norg/jetbrains/anko/coroutines/experimental/Ref\n*L\n1#1,34:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0001*\u00020\u00022\u00020\u0002B\u000f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u0008\u001a\u00028\u0000H\u0086B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tR\u001c\u0010\u0005\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00018\u00008\u00000\u0006X\u0088\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/jetbrains/anko/coroutines/experimental/Ref;",
        "T",
        "",
        "obj",
        "(Ljava/lang/Object;)V",
        "weakRef",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "anko-coroutines_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field private final weakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jetbrains/anko/coroutines/experimental/Ref;->weakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$getWeakRef$p(Lorg/jetbrains/anko/coroutines/experimental/Ref;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "$this"    # Lorg/jetbrains/anko/coroutines/experimental/Ref;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/jetbrains/anko/coroutines/experimental/Ref;->weakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public final invoke(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 27
    .local v0, "$i$a$1$suspendCoroutineOrReturn":I
    const-string v1, "$continuation"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;->normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/experimental/Continuation;

    .line 28
    .local v1, "it":Lkotlin/coroutines/experimental/Continuation;
    invoke-static {p0}, Lorg/jetbrains/anko/coroutines/experimental/Ref;->access$getWeakRef$p(Lorg/jetbrains/anko/coroutines/experimental/Ref;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 29
    .local v2, "ref":Ljava/lang/Object;
    nop

    .line 27
    .end local v0    # "$i$a$1$suspendCoroutineOrReturn":I
    .end local v1    # "it":Lkotlin/coroutines/experimental/Continuation;
    .end local v2    # "ref":Ljava/lang/Object;
    return-object v2

    .line 28
    .restart local v0    # "$i$a$1$suspendCoroutineOrReturn":I
    .restart local v1    # "it":Lkotlin/coroutines/experimental/Continuation;
    :cond_0
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method
