.class public final Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;
.super Ljava/lang/Object;
.source "ConflatedBroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/BroadcastChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;,
        Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;,
        Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;,
        Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/experimental/channels/BroadcastChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConflatedBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConflatedBroadcastChannel.kt\nkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel\n+ 2 IntrinsicArrayConstructors.kt\norg/jetbrains/kotlin/codegen/intrinsics/IntrinsicArrayConstructorsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,270:1\n42#2,5:271\n9671#3,2:276\n9671#3,2:278\n*E\n*S KotlinDebug\n*F\n+ 1 ConflatedBroadcastChannel.kt\nkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel\n*L\n166#1,5:271\n191#1,2:276\n239#1,2:278\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 4*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u00043456B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J=\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00170\u00162\u0014\u0010\u0018\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0017\u0018\u00010\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017H\u0002\u00a2\u0006\u0002\u0010\u001aJ\u0012\u0010\u001b\u001a\u00020\u00072\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0017J\u0016\u0010\u001e\u001a\u00020\u001f2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017H\u0003J\u0015\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\"J\u0017\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010!\u001a\u00028\u0000H\u0003\u00a2\u0006\u0002\u0010%J\u000e\u0010&\u001a\u0008\u0012\u0004\u0012\u00028\u00000\'H\u0017JJ\u0010(\u001a\u00020\u001f\"\u0004\u0008\u0001\u0010)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H)0+2\u0006\u0010!\u001a\u00028\u00002\u001c\u0010,\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H)0.\u0012\u0006\u0012\u0004\u0018\u00010\u000b0-H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010/J=\u00100\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0017\u0018\u00010\u00162\u0012\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00170\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017H\u0003\u00a2\u0006\u0002\u0010\u001aJ\u0019\u00101\u001a\u00020\u001f2\u0006\u0010!\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00102R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008R\u0014\u0010\t\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008R\u0018\u0010\n\u001a\u00020\u000b8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000c\u0010\u0005R\u0012\u0010\r\u001a\u00020\u000e8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0003\u001a\u00028\u00008FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000f\u0010\u0005\u001a\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00018\u00008FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0013\u0010\u0005\u001a\u0004\u0008\u0014\u0010\u0011\u0082\u0002\u0004\n\u0002\u0008\t\u00a8\u00067"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/BroadcastChannel;",
        "value",
        "(Ljava/lang/Object;)V",
        "()V",
        "isClosedForSend",
        "",
        "()Z",
        "isFull",
        "state",
        "",
        "state$annotations",
        "updating",
        "",
        "value$annotations",
        "getValue",
        "()Ljava/lang/Object;",
        "valueOrNull",
        "valueOrNull$annotations",
        "getValueOrNull",
        "addSubscriber",
        "",
        "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;",
        "list",
        "subscriber",
        "([Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;",
        "close",
        "cause",
        "",
        "closeSubscriber",
        "",
        "offer",
        "element",
        "(Ljava/lang/Object;)Z",
        "offerInternal",
        "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;",
        "(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;",
        "open",
        "Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;",
        "registerSelectSend",
        "R",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "(Lkotlinx/coroutines/experimental/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "removeSubscriber",
        "send",
        "(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;",
        "Closed",
        "Companion",
        "State",
        "Subscriber",
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
.field public static final CLOSED:Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Companion;

.field public static final INITIAL_STATE:Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNDEFINED:Lkotlinx/coroutines/experimental/internal/Symbol;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UPDATING:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile state:Ljava/lang/Object;

.field private volatile updating:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->Companion:Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Companion;

    .line 60
    nop

    .line 61
    const-class v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;

    const-class v2, Ljava/lang/Object;

    const-string v3, "state"

    invoke-static {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const-string v2, "AtomicReferenceFieldUpda\u2026Any::class.java, \"state\")"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 64
    nop

    .line 65
    const-class v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;

    const-string v2, "updating"

    invoke-static {v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const-string v2, "AtomicIntegerFieldUpdate\u2026::class.java, \"updating\")"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->UPDATING:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 68
    new-instance v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->CLOSED:Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    .line 71
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v2, "UNDEFINED"

    invoke-direct {v0, v2}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->UNDEFINED:Lkotlinx/coroutines/experimental/internal/Symbol;

    .line 74
    new-instance v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    sget-object v2, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->UNDEFINED:Lkotlinx/coroutines/experimental/internal/Symbol;

    invoke-direct {v0, v2, v1}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;-><init>(Ljava/lang/Object;[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)V

    sput-object v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->INITIAL_STATE:Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->INITIAL_STATE:Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iput-object v0, p0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->state:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;-><init>()V

    .line 48
    new-instance v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;-><init>(Ljava/lang/Object;[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)V

    iput-object v0, p0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->state:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$closeSubscriber(Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;
    .param p1, "subscriber"    # Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->closeSubscriber(Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)V

    return-void
.end method

.method private final addSubscriber([Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
    .locals 7
    .param p1, "list"    # [Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
    .param p2, "subscriber"    # Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber<",
            "TE;>;",
            "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber<",
            "TE;>;)[",
            "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber<",
            "TE;>;"
        }
    .end annotation

    .line 166
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 166
    .local v0, "size$iv":I
    const/4 v1, 0x0

    move v2, v1

    .line 271
    .local v2, "$i$f$Array":I
    new-array v3, v0, [Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;

    .line 272
    .local v3, "result$iv":[Ljava/lang/Object;
    add-int/lit8 v4, v0, -0x1

    if-ltz v4, :cond_0

    const/4 v5, 0x0

    .line 273
    .local v1, "i$iv":I
    .local v5, "$i$a$1$<init>":I
    :goto_0
    move v6, v1

    .line 166
    .local v6, "it":I
    nop

    .line 166
    .end local v5    # "$i$a$1$<init>":I
    .end local v6    # "it":I
    aput-object p2, v3, v1

    .line 272
    if-eq v1, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 272
    .end local v1    # "i$iv":I
    goto :goto_0

    .line 275
    :cond_0
    nop

    .line 275
    .end local v0    # "size$iv":I
    .end local v2    # "$i$f$Array":I
    return-object v3

    .line 167
    .end local v3    # "result$iv":[Ljava/lang/Object;
    :cond_1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, p2}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;

    return-object v0
.end method

.method private final closeSubscriber(Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)V
    .locals 4
    .param p1, "subscriber"    # Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber<",
            "TE;>;)V"
        }
    .end annotation

    .line 151
    :goto_0
    nop

    .line 152
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->state:Ljava/lang/Object;

    .line 153
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 154
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    if-eqz v1, :cond_0

    return-void

    .line 155
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    if-eqz v1, :cond_4

    .line 156
    new-instance v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iget-object v2, v2, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.experimental.channels.ConflatedBroadcastChannel.State<E>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iget-object v3, v3, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;->subscribers:[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {p0, v3, p1}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->removeSubscriber([Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;-><init>(Ljava/lang/Object;[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)V

    .line 157
    .local v1, "update":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;
    sget-object v2, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    return-void

    .line 161
    .end local v0    # "state":Ljava/lang/Object;
    .end local v1    # "update":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;
    :cond_3
    nop

    .line 151
    goto :goto_0

    .line 160
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method private final offerInternal(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;
    .locals 10
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;"
        }
    .end annotation

    .line 227
    sget-object v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->UPDATING:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 228
    :cond_0
    nop

    .line 229
    :goto_0
    nop

    .line 230
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->state:Ljava/lang/Object;

    .line 231
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 232
    instance-of v3, v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    if-eqz v3, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v0    # "state":Ljava/lang/Object;
    .end local p0    # "this":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;
    .end local p1    # "element":Ljava/lang/Object;
    :goto_1
    iput v2, p0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->updating:I

    return-object v1

    .line 233
    .restart local v0    # "state":Ljava/lang/Object;
    .restart local p0    # "this":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;
    .restart local p1    # "element":Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v3, v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    if-eqz v3, :cond_6

    .line 234
    new-instance v3, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    if-nez v0, :cond_2

    new-instance v1, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.channels.ConflatedBroadcastChannel.State<E>"

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iget-object v4, v4, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;->subscribers:[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;

    invoke-direct {v3, p1, v4}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;-><init>(Ljava/lang/Object;[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)V

    .line 235
    .local v3, "update":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;
    sget-object v4, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 239
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iget-object v4, v4, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;->subscribers:[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;

    if-eqz v4, :cond_4

    check-cast v4, [Ljava/lang/Object;

    .line 239
    .local v4, "$receiver$iv":[Ljava/lang/Object;
    move v5, v2

    .line 278
    .local v5, "$i$f$forEach":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 278
    .local v7, "$i$a$1$forEach":I
    :goto_2
    array-length v8, v4

    if-ge v6, v8, :cond_3

    aget-object v8, v4, v6

    .line 278
    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;

    .line 239
    .local v9, "it":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
    invoke-virtual {v9, p1}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v7    # "$i$a$1$forEach":I
    .end local v9    # "it":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
    add-int/lit8 v6, v6, 0x1

    .line 239
    .end local v8    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 279
    .end local v4    # "$receiver$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$forEach":I
    :cond_3
    nop

    .line 240
    :cond_4
    goto :goto_1

    .line 244
    .end local v0    # "state":Ljava/lang/Object;
    .end local v3    # "update":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;
    :cond_5
    nop

    .line 229
    goto :goto_0

    .line 243
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    .end local v0    # "state":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    iput v2, p0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->updating:I

    throw v0
.end method

.method private final removeSubscriber([Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
    .locals 6
    .param p1, "list"    # [Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
    .param p2, "subscriber"    # Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber<",
            "TE;>;",
            "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber<",
            "TE;>;)[",
            "Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber<",
            "TE;>;"
        }
    .end annotation

    .line 172
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    .line 173
    .local v0, "n":I
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1, p2}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 174
    .local v1, "i":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    const-string v2, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 175
    :cond_1
    if-ne v0, v3, :cond_2

    const/4 v2, 0x0

    return-object v2

    .line 176
    :cond_2
    add-int/lit8 v4, v0, -0x1

    new-array v4, v4, [Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;

    .line 177
    .local v4, "update":[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
    invoke-static {p1, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    add-int/lit8 v2, v1, 0x1

    sub-int v5, v0, v1

    sub-int/2addr v5, v3

    invoke-static {p1, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    return-object v4
.end method

.method private static synthetic state$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic value$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic valueOrNull$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Throwable;)Z
    .locals 8
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 184
    :goto_0
    nop

    .line 185
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->state:Ljava/lang/Object;

    .line 186
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 187
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 188
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    if-eqz v1, :cond_6

    .line 189
    if-nez p1, :cond_1

    sget-object v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->CLOSED:Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    goto :goto_1

    :cond_1
    new-instance v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;-><init>(Ljava/lang/Throwable;)V

    .line 190
    .local v1, "update":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;
    :goto_1
    sget-object v3, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 191
    if-nez v0, :cond_2

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.channels.ConflatedBroadcastChannel.State<E>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iget-object v3, v3, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;->subscribers:[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;

    if-eqz v3, :cond_4

    check-cast v3, [Ljava/lang/Object;

    .line 191
    .local v3, "$receiver$iv":[Ljava/lang/Object;
    move v4, v2

    .line 276
    .local v4, "$i$f$forEach":I
    const/4 v5, 0x0

    .line 276
    .local v5, "$i$a$1$forEach":I
    :goto_2
    array-length v6, v3

    if-ge v2, v6, :cond_3

    aget-object v6, v3, v2

    .line 276
    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;

    .line 191
    .local v7, "it":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
    invoke-virtual {v7, p1}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;->close(Ljava/lang/Throwable;)Z

    .line 191
    .end local v5    # "$i$a$1$forEach":I
    .end local v7    # "it":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
    add-int/lit8 v2, v2, 0x1

    .line 191
    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 277
    .end local v3    # "$receiver$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$forEach":I
    :cond_3
    nop

    .line 192
    :cond_4
    const/4 v2, 0x1

    return v2

    .line 196
    .end local v0    # "state":Ljava/lang/Object;
    .end local v1    # "update":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;
    :cond_5
    nop

    .line 184
    goto :goto_0

    .line 195
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->state:Ljava/lang/Object;

    .line 97
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 98
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;->getValueException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 99
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    if-eqz v1, :cond_2

    .line 100
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;->value:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->UNDEFINED:Lkotlinx/coroutines/experimental/internal/Symbol;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 101
    :cond_1
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;->value:Ljava/lang/Object;

    return-object v1

    .line 103
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final getValueOrNull()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 113
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->state:Ljava/lang/Object;

    .line 114
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 115
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 116
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    if-eqz v1, :cond_2

    .line 117
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;->value:Ljava/lang/Object;

    sget-object v3, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->UNDEFINED:Lkotlinx/coroutines/experimental/internal/Symbol;

    if-ne v1, v3, :cond_1

    return-object v2

    .line 118
    :cond_1
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;->value:Ljava/lang/Object;

    return-object v1

    .line 120
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public isClosedForSend()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->state:Ljava/lang/Object;

    instance-of v0, v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    return v0
.end method

.method public isFull()Z
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->offerInternal(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    .local v0, "it":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;
    const/4 v1, 0x0

    .line 219
    .local v1, "$i$a$1$let":I
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;->getSendException()Ljava/lang/Throwable;

    move-result-object v2

    throw v2

    .line 220
    .end local v0    # "it":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;
    .end local v1    # "$i$a$1$let":I
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public open()Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 129
    new-instance v0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;-><init>(Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;)V

    .line 130
    .local v0, "subscriber":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;
    :goto_0
    nop

    .line 131
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->state:Ljava/lang/Object;

    .line 132
    .local v1, "state":Ljava/lang/Object;
    nop

    .line 133
    instance-of v2, v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    if-eqz v2, :cond_0

    .line 134
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    iget-object v2, v2, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;->closeCause:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;->close(Ljava/lang/Throwable;)Z

    .line 135
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;

    return-object v2

    .line 137
    :cond_0
    instance-of v2, v1, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    if-eqz v2, :cond_4

    .line 138
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iget-object v2, v2, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;->value:Ljava/lang/Object;

    sget-object v3, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->UNDEFINED:Lkotlinx/coroutines/experimental/internal/Symbol;

    if-eq v2, v3, :cond_1

    .line 139
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iget-object v2, v2, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_1
    new-instance v2, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iget-object v3, v3, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;->value:Ljava/lang/Object;

    if-nez v1, :cond_2

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.channels.ConflatedBroadcastChannel.State<E>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;

    iget-object v4, v4, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;->subscribers:[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;

    invoke-direct {p0, v4, v0}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->addSubscriber([Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;-><init>(Ljava/lang/Object;[Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Subscriber;)V

    .line 141
    .local v2, "update":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;
    sget-object v3, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->STATE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;

    return-object v3

    .line 145
    .end local v1    # "state":Ljava/lang/Object;
    .end local v2    # "update":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$State;
    :cond_3
    nop

    .line 130
    goto :goto_0

    .line 144
    .restart local v1    # "state":Ljava/lang/Object;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public registerSelectSend(Lkotlinx/coroutines/experimental/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "-TR;>;TE;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-direct {p0, p2}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->offerInternal(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    .local v0, "it":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;
    const/4 v1, 0x0

    .line 254
    .local v1, "$i$a$1$let":I
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;->getSendException()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v2, v3}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->resumeSelectWithException(Ljava/lang/Throwable;I)V

    .line 255
    return-void

    .line 253
    .end local v0    # "it":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;
    .end local v1    # "$i$a$1$let":I
    :cond_1
    nop

    .line 257
    invoke-interface {p1}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlinx/coroutines/experimental/intrinsics/UndispatchedKt;->startCoroutineUndispatched(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/experimental/Continuation;)V

    .line 258
    return-void
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "$continuation"    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel;->offerInternal(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    .local v0, "it":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;
    const/4 v1, 0x0

    .line 208
    .local v1, "$i$a$1$let":I
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;->getSendException()Ljava/lang/Throwable;

    move-result-object v2

    throw v2

    .line 209
    .end local v0    # "it":Lkotlinx/coroutines/experimental/channels/ConflatedBroadcastChannel$Closed;
    .end local v1    # "$i$a$1$let":I
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
