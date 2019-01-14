.class final Lkotlinx/coroutines/experimental/JobSupport$NodeList;
.super Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
.source "Job.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/JobSupport$Incomplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NodeList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/JobSupport$NodeList$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/experimental/JobSupport$NodeList\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead\n*L\n1#1,850:1\n595#2,6:851\n*E\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/experimental/JobSupport$NodeList\n*L\n722#1,6:851\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u00012\u00020\u0002:\u0001\u0010B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0014\u0010\u000c\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/JobSupport$NodeList;",
        "Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;",
        "Lkotlinx/coroutines/experimental/JobSupport$Incomplete;",
        "active",
        "",
        "(Z)V",
        "_active",
        "",
        "getActive",
        "()Ljava/lang/Object;",
        "idempotentStart",
        "getIdempotentStart",
        "isActive",
        "()Z",
        "toString",
        "",
        "Companion",
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
.field public static final ACTIVE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlinx/coroutines/experimental/JobSupport$NodeList;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ACTIVE_STATE:Lkotlinx/coroutines/experimental/internal/Symbol;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lkotlinx/coroutines/experimental/JobSupport$NodeList$Companion;


# instance fields
.field public volatile _active:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/JobSupport$NodeList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->Companion:Lkotlinx/coroutines/experimental/JobSupport$NodeList$Companion;

    .line 716
    const-class v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_active"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const-string v1, "AtomicReferenceFieldUpda\u2026y::class.java, \"_active\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->ACTIVE:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 719
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "ACTIVE_STATE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->ACTIVE_STATE:Lkotlinx/coroutines/experimental/internal/Symbol;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 691
    nop

    .line 693
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;-><init>()V

    .line 696
    if-eqz p1, :cond_0

    sget-object v0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->ACTIVE_STATE:Lkotlinx/coroutines/experimental/internal/Symbol;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->_active:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getActive()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 699
    :goto_0
    nop

    .line 700
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->_active:Ljava/lang/Object;

    .line 701
    .local v0, "active":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    if-nez v1, :cond_0

    return-object v0

    .line 702
    :cond_0
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/experimental/internal/OpDescriptor;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/experimental/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    .end local v0    # "active":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getIdempotentStart()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 709
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->getActive()Ljava/lang/Object;

    move-result-object v0

    .line 710
    .local v0, "active":Ljava/lang/Object;
    sget-object v1, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->ACTIVE_STATE:Lkotlinx/coroutines/experimental/internal/Symbol;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public isActive()Z
    .locals 1

    .line 706
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->getActive()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 722
    .local v0, "$i$a$1$buildString":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v1

    .line 723
    .local v2, "$receiver":Ljava/lang/StringBuilder;
    const-string v3, "List"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobSupport$NodeList;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "{Active}"

    goto :goto_0

    :cond_0
    const-string v3, "{New}"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 727
    .local v3, "first":Lkotlin/jvm/internal/Ref$BooleanRef;
    move-object v5, p0

    .line 727
    .local v5, "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
    const/4 v6, 0x0

    move v7, v6

    .line 851
    .local v7, "$i$f$forEach":I
    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.experimental.internal.Node /* = kotlinx.coroutines.experimental.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v8, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    const/4 v9, 0x0

    .line 852
    .local v8, "cur$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .local v9, "$i$a$1$forEach":I
    :goto_1
    move-object v10, v5

    check-cast v10, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v4

    if-eqz v10, :cond_4

    .line 853
    instance-of v10, v8, Lkotlinx/coroutines/experimental/JobNode;

    if-eqz v10, :cond_3

    move-object v10, v8

    check-cast v10, Lkotlinx/coroutines/experimental/JobNode;

    .line 728
    .local v10, "node":Lkotlinx/coroutines/experimental/JobNode;
    iget-boolean v11, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v11, :cond_2

    iput-boolean v6, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_2

    :cond_2
    const-string v11, ", "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :goto_2
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 730
    .end local v9    # "$i$a$1$forEach":I
    .end local v10    # "node":Lkotlinx/coroutines/experimental/JobNode;
    nop

    .line 854
    .restart local v9    # "$i$a$1$forEach":I
    :cond_3
    invoke-virtual {v8}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;

    move-result-object v8

    .line 852
    goto :goto_1

    .line 856
    .end local v5    # "this_$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListHead;
    .end local v7    # "$i$f$forEach":I
    .end local v8    # "cur$iv":Lkotlinx/coroutines/experimental/internal/LockFreeLinkedListNode;
    .end local v9    # "$i$a$1$forEach":I
    :cond_4
    nop

    .line 731
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .end local v0    # "$i$a$1$buildString":I
    .end local v2    # "$receiver":Ljava/lang/StringBuilder;
    .end local v3    # "first":Lkotlin/jvm/internal/Ref$BooleanRef;
    nop

    .line 722
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    return-object v0
.end method
