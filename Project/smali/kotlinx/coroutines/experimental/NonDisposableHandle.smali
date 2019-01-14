.class public final Lkotlinx/coroutines/experimental/NonDisposableHandle;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/DisposableHandle;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/NonDisposableHandle;",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "()V",
        "dispose",
        "",
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


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/experimental/NonDisposableHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 258
    new-instance v0, Lkotlinx/coroutines/experimental/NonDisposableHandle;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/NonDisposableHandle;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/NonDisposableHandle;

    sput-object v0, Lkotlinx/coroutines/experimental/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/experimental/NonDisposableHandle;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 260
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 263
    const-string v0, "NonDisposableHandle"

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

    .line 258
    invoke-static {p0}, Lkotlinx/coroutines/experimental/DisposableHandle$DefaultImpls;->unregister(Lkotlinx/coroutines/experimental/DisposableHandle;)V

    return-void
.end method
