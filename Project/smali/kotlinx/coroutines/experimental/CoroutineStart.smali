.class public final enum Lkotlinx/coroutines/experimental/CoroutineStart;
.super Ljava/lang/Enum;
.source "CoroutineStart.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/experimental/CoroutineStart;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\\\u0010\u0006\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0008\"\u0004\u0008\u0001\u0010\t2\'\u0010\n\u001a#\u0008\u0001\u0012\u0004\u0012\u0002H\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\t0\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b\u00a2\u0006\u0002\u0008\u000e2\u0006\u0010\u000f\u001a\u0002H\u00082\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u000cH\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/CoroutineStart;",
        "",
        "(Ljava/lang/String;I)V",
        "isLazy",
        "",
        "()Z",
        "invoke",
        "",
        "R",
        "T",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "receiver",
        "completion",
        "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V",
        "DEFAULT",
        "LAZY",
        "UNDISPATCHED",
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
.field private static final synthetic $VALUES:[Lkotlinx/coroutines/experimental/CoroutineStart;

.field public static final enum DEFAULT:Lkotlinx/coroutines/experimental/CoroutineStart;

.field public static final enum LAZY:Lkotlinx/coroutines/experimental/CoroutineStart;

.field public static final enum UNDISPATCHED:Lkotlinx/coroutines/experimental/CoroutineStart;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/coroutines/experimental/CoroutineStart;

    new-instance v1, Lkotlinx/coroutines/experimental/CoroutineStart;

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/experimental/CoroutineStart;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/experimental/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/experimental/CoroutineStart;

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/coroutines/experimental/CoroutineStart;

    const-string v2, "LAZY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/experimental/CoroutineStart;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/experimental/CoroutineStart;->LAZY:Lkotlinx/coroutines/experimental/CoroutineStart;

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/coroutines/experimental/CoroutineStart;

    const-string v2, "UNDISPATCHED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/experimental/CoroutineStart;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/experimental/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/experimental/CoroutineStart;

    aput-object v1, v0, v3

    sput-object v0, Lkotlinx/coroutines/experimental/CoroutineStart;->$VALUES:[Lkotlinx/coroutines/experimental/CoroutineStart;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/experimental/CoroutineStart;
    .locals 1

    const-class v0, Lkotlinx/coroutines/experimental/CoroutineStart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/experimental/CoroutineStart;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/experimental/CoroutineStart;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineStart;->$VALUES:[Lkotlinx/coroutines/experimental/CoroutineStart;

    invoke-virtual {v0}, [Lkotlinx/coroutines/experimental/CoroutineStart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/experimental/CoroutineStart;

    return-object v0
.end method


# virtual methods
.method public final invoke(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "receiver"    # Ljava/lang/Object;
    .param p3, "completion"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineStart$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CoroutineStart;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    goto :goto_0

    .line 66
    :pswitch_1
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/experimental/intrinsics/UndispatchedKt;->startCoroutineUndispatched(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    goto :goto_0

    .line 65
    :pswitch_2
    invoke-static {p1, p2, p3}, Lkotlin/coroutines/experimental/CoroutinesKt;->startCoroutine(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 68
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isLazy()Z
    .locals 2

    .line 73
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/CoroutineStart;

    sget-object v1, Lkotlinx/coroutines/experimental/CoroutineStart;->LAZY:Lkotlinx/coroutines/experimental/CoroutineStart;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
