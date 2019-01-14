.class public final Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;
.super Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;
.source "ArrayBroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/channels/BroadcastChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel<",
        "TE;>;",
        "Lkotlinx/coroutines/experimental/channels/BroadcastChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayBroadcastChannel.kt\nkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel\n*L\n1#1,346:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001/B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001a\u001a\u00020\u001bH\u0002J\u0012\u0010\u001c\u001a\u00020\u00122\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0016\u0010\u001f\u001a\u00020\u001b2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018H\u0002J\u0008\u0010!\u001a\u00020\u0010H\u0002J\u0015\u0010\"\u001a\u00028\u00002\u0006\u0010#\u001a\u00020\u0010H\u0003\u00a2\u0006\u0002\u0010$J\u0015\u0010%\u001a\u00020\t2\u0006\u0010&\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\'J!\u0010(\u001a\u00020\t2\u0006\u0010&\u001a\u00028\u00002\n\u0010)\u001a\u0006\u0012\u0002\u0008\u00030*H\u0014\u00a2\u0006\u0002\u0010+J\u000e\u0010,\u001a\u0008\u0012\u0004\u0012\u00028\u00000-H\u0016J\u0008\u0010.\u001a\u00020\u001bH\u0002R\u0018\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u00108\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00128TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0013R\u0012\u0010\u0015\u001a\u00020\u00058\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00108\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;",
        "E",
        "Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;",
        "Lkotlinx/coroutines/experimental/channels/BroadcastChannel;",
        "capacity",
        "",
        "(I)V",
        "buffer",
        "",
        "",
        "[Ljava/lang/Object;",
        "bufferLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "getCapacity",
        "()I",
        "head",
        "",
        "isBufferAlwaysFull",
        "",
        "()Z",
        "isBufferFull",
        "size",
        "subs",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;",
        "tail",
        "checkSubOffers",
        "",
        "close",
        "cause",
        "",
        "closeSubscriber",
        "sub",
        "computeMinHead",
        "elementAt",
        "index",
        "(J)Ljava/lang/Object;",
        "offerInternal",
        "element",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "offerSelectInternal",
        "select",
        "Lkotlinx/coroutines/experimental/selects/SelectInstance;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;",
        "open",
        "Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;",
        "updateHead",
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


# instance fields
.field private final buffer:[Ljava/lang/Object;

.field private final bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final capacity:I

.field private volatile head:J

.field private volatile size:I

.field private final subs:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private volatile tail:J


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .line 37
    nop

    .line 42
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    .line 44
    iget v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    move v0, v2

    .line 44
    .local v0, "$i$a$1$check":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayBroadcastChannel capacity must be at least 1, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .end local v0    # "$i$a$1$check":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 47
    :cond_1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    iget v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->subs:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static final synthetic access$closeSubscriber(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;
    .param p1, "sub"    # Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->closeSubscriber(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;)V

    return-void
.end method

.method public static final synthetic access$elementAt(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;J)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;
    .param p1, "index"    # J

    .line 37
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->elementAt(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTail$p(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;)J
    .locals 2
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;

    .line 37
    iget-wide v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->tail:J

    return-wide v0
.end method

.method public static final synthetic access$setTail$p(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;J)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;
    .param p1, "<set-?>"    # J

    .line 37
    iput-wide p1, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->tail:J

    return-void
.end method

.method public static final synthetic access$updateHead(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;

    .line 37
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->updateHead()V

    return-void
.end method

.method private final checkSubOffers()V
    .locals 4

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "updated":Z
    nop

    .line 132
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->subs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;

    .line 133
    .local v2, "sub":Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;
    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->checkOffer()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 132
    .end local v2    # "sub":Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;
    :cond_0
    goto :goto_0

    .line 135
    :cond_1
    if-eqz v0, :cond_2

    .line 136
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->updateHead()V

    .line 137
    :cond_2
    return-void
.end method

.method private final closeSubscriber(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;)V
    .locals 5
    .param p1, "sub"    # Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber<",
            "TE;>;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->subs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    iget-wide v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->head:J

    iget-wide v2, p1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->subHead:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 126
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->updateHead()V

    .line 127
    :cond_0
    return-void
.end method

.method private final computeMinHead()J
    .locals 6

    .line 184
    const-wide v0, 0x7fffffffffffffffL

    .line 185
    .local v0, "minHead":J
    iget-object v2, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->subs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;

    .line 186
    .local v3, "sub":Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;
    iget-wide v4, v3, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->subHead:J

    invoke-static {v0, v1, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v0

    .line 185
    .end local v3    # "sub":Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;
    goto :goto_0

    .line 187
    :cond_0
    return-wide v0
.end method

.method private final elementAt(J)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private final updateHead()V
    .locals 25

    .line 141
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->computeMinHead()J

    move-result-wide v2

    const/4 v5, 0x0

    .line 143
    .local v2, "minHead":J
    .local v5, "$i$a$1$withLock":I
    :goto_0
    nop

    .line 144
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v7, 0x0

    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/experimental/channels/Send;

    iput-object v8, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 145
    .local v6, "send":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v7, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 146
    .local v8, "token":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v9, v1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v9, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 147
    :try_start_0
    iget-wide v10, v1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->tail:J

    .line 148
    .local v10, "tail":J
    iget-wide v12, v1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->head:J

    .line 149
    .local v12, "head":J
    invoke-static {v2, v3, v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    .local v14, "targetHead":J
    cmp-long v16, v14, v12

    if-gtz v16, :cond_0

    .line 150
    .end local v5    # "$i$a$1$withLock":I
    .end local v10    # "tail":J
    .end local v12    # "head":J
    .end local v14    # "targetHead":J
    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 151
    .restart local v5    # "$i$a$1$withLock":I
    .restart local v10    # "tail":J
    .restart local v12    # "head":J
    .restart local v14    # "targetHead":J
    :cond_0
    :try_start_1
    iget v4, v1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->size:I

    .line 153
    .local v4, "size":I
    :goto_1
    cmp-long v16, v12, v14

    if-gez v16, :cond_a

    .line 154
    iget-object v7, v1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v17, v2

    :try_start_2
    iget v2, v1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    .line 154
    .end local v2    # "minHead":J
    .local v17, "minHead":J
    int-to-long v2, v2

    rem-long v2, v12, v2

    long-to-int v2, v2

    const/4 v3, 0x0

    aput-object v3, v7, v2

    .line 155
    iget v2, v1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    if-lt v4, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 157
    .local v2, "wasFull":Z
    :goto_2
    const-wide/16 v19, 0x1

    move/from16 v21, v4

    add-long v3, v12, v19

    .line 157
    .end local v4    # "size":I
    .end local v12    # "head":J
    .local v3, "head":J
    .local v21, "size":I
    iput-wide v3, v1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->head:J

    .line 158
    add-int/lit8 v7, v21, -0x1

    .line 158
    .end local v21    # "size":I
    .local v7, "size":I
    iput v7, v1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->size:I

    .line 159
    if-eqz v2, :cond_9

    .line 160
    :goto_3
    nop

    .line 161
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/experimental/channels/Send;

    move-result-object v12

    if-eqz v12, :cond_8

    iput-object v12, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 162
    iget-object v12, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/experimental/channels/Send;

    instance-of v12, v12, Lkotlinx/coroutines/experimental/channels/Closed;

    if-eqz v12, :cond_2

    .line 153
    .end local v2    # "wasFull":Z
    move-wide/from16 v23, v3

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 163
    .restart local v2    # "wasFull":Z
    :cond_2
    iget-object v12, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/experimental/channels/Send;

    if-nez v12, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lkotlinx/coroutines/experimental/channels/Send;->tryResumeSend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 164
    iget-object v12, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v12, :cond_7

    .line 166
    iget-object v12, v1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    iget v13, v1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    move/from16 v22, v2

    move-wide/from16 v23, v3

    int-to-long v2, v13

    .line 166
    .end local v2    # "wasFull":Z
    .end local v3    # "head":J
    .local v22, "wasFull":Z
    .local v23, "head":J
    rem-long v2, v10, v2

    long-to-int v2, v2

    iget-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/experimental/channels/Send;

    if-nez v3, :cond_4

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.experimental.channels.Send"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-interface {v3}, Lkotlinx/coroutines/experimental/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v12, v2

    .line 167
    add-int/lit8 v2, v7, 0x1

    iput v2, v1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->size:I

    .line 168
    const/4 v2, 0x1

    int-to-long v2, v2

    add-long v12, v10, v2

    iput-wide v12, v1, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->tail:J

    .line 169
    nop

    .line 174
    .end local v7    # "size":I
    .end local v10    # "tail":J
    .end local v14    # "targetHead":J
    .end local v22    # "wasFull":Z
    .end local v23    # "head":J
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 177
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/experimental/channels/Send;

    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v3, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v3, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-interface {v2, v3}, Lkotlinx/coroutines/experimental/channels/Send;->completeResumeSend(Ljava/lang/Object;)V

    .line 179
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->checkSubOffers()V

    .line 143
    .end local v6    # "send":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v8    # "token":Lkotlin/jvm/internal/Ref$ObjectRef;
    nop

    .line 141
    move-wide/from16 v2, v17

    goto/16 :goto_0

    .line 160
    .restart local v2    # "wasFull":Z
    .restart local v3    # "head":J
    .restart local v6    # "send":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "size":I
    .restart local v8    # "token":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v10    # "tail":J
    .restart local v14    # "targetHead":J
    :cond_7
    move/from16 v22, v2

    move-wide/from16 v23, v3

    const/4 v2, 0x1

    .line 160
    .end local v2    # "wasFull":Z
    .end local v3    # "head":J
    .restart local v22    # "wasFull":Z
    .restart local v23    # "head":J
    move/from16 v2, v22

    goto :goto_3

    .line 153
    .end local v22    # "wasFull":Z
    .end local v23    # "head":J
    .restart local v2    # "wasFull":Z
    .restart local v3    # "head":J
    :cond_8
    move/from16 v22, v2

    move-wide/from16 v23, v3

    const/4 v13, 0x0

    .line 153
    .end local v2    # "wasFull":Z
    .end local v3    # "head":J
    .restart local v22    # "wasFull":Z
    .restart local v23    # "head":J
    goto :goto_4

    .line 153
    .end local v22    # "wasFull":Z
    .end local v23    # "head":J
    .restart local v3    # "head":J
    :cond_9
    move-wide/from16 v23, v3

    const/4 v13, 0x0

    .line 151
    .end local v3    # "head":J
    .restart local v23    # "head":J
    :goto_4
    move v4, v7

    move-object v7, v13

    move-wide/from16 v2, v17

    move-wide/from16 v12, v23

    goto/16 :goto_1

    .line 146
    .end local v5    # "$i$a$1$withLock":I
    .end local v7    # "size":I
    .end local v10    # "tail":J
    .end local v14    # "targetHead":J
    .end local v23    # "head":J
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_5

    .line 174
    .end local v17    # "minHead":J
    .local v2, "minHead":J
    :cond_a
    move-wide/from16 v17, v2

    .line 174
    .end local v2    # "minHead":J
    .restart local v17    # "minHead":J
    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 146
    .end local v17    # "minHead":J
    .restart local v2    # "minHead":J
    :catchall_1
    move-exception v0

    move-wide/from16 v17, v2

    move-object v2, v0

    .line 146
    .end local v2    # "minHead":J
    .restart local v17    # "minHead":J
    :goto_5
    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method


# virtual methods
.method public close(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 80
    invoke-super {p0, p1}, Lkotlinx/coroutines/experimental/channels/AbstractSendChannel;->close(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->checkSubOffers()V

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public final getCapacity()I
    .locals 1

    .line 41
    iget v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    return v0
.end method

.method protected isBufferAlwaysFull()Z
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected isBufferFull()Z
    .locals 2

    .line 62
    iget v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->size:I

    iget v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 87
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    move v2, v1

    .line 89
    .local v2, "$i$a$1$withLock":I
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->getClosedForSend()Lkotlinx/coroutines/experimental/channels/Closed;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 89
    .end local v2    # "$i$a$1$withLock":I
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v3

    .line 90
    .restart local v2    # "$i$a$1$withLock":I
    :cond_0
    :try_start_1
    iget v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->size:I

    .line 91
    .local v1, "size":I
    iget v3, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    if-lt v1, v3, :cond_1

    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v1    # "size":I
    .end local v2    # "$i$a$1$withLock":I
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 92
    .restart local v1    # "size":I
    .restart local v2    # "$i$a$1$withLock":I
    :cond_1
    :try_start_2
    iget-wide v3, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->tail:J

    .line 93
    .local v3, "tail":J
    iget-object v5, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    iget v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    int-to-long v6, v6

    rem-long v6, v3, v6

    long-to-int v6, v6

    aput-object p1, v5, v6

    .line 94
    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->size:I

    .line 95
    const/4 v5, 0x1

    int-to-long v5, v5

    add-long v7, v3, v5

    iput-wide v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->tail:J

    .line 96
    .end local v1    # "size":I
    .end local v2    # "$i$a$1$withLock":I
    .end local v3    # "tail":J
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 98
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->checkSubOffers()V

    .line 99
    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;

    return-object v0

    .line 87
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/experimental/selects/SelectInstance;)Ljava/lang/Object;
    .locals 9
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "select"    # Lkotlinx/coroutines/experimental/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/experimental/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "select"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    move v2, v1

    .line 106
    .local v2, "$i$a$1$withLock":I
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->getClosedForSend()Lkotlinx/coroutines/experimental/channels/Closed;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 106
    .end local v2    # "$i$a$1$withLock":I
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v3

    .line 107
    .restart local v2    # "$i$a$1$withLock":I
    :cond_0
    :try_start_1
    iget v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->size:I

    .line 108
    .local v1, "size":I
    iget v3, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    if-lt v1, v3, :cond_1

    sget-object v1, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v1    # "size":I
    .end local v2    # "$i$a$1$withLock":I
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 110
    .restart local v1    # "size":I
    .restart local v2    # "$i$a$1$withLock":I
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {p2, v3}, Lkotlinx/coroutines/experimental/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 111
    invoke-static {}, Lkotlinx/coroutines/experimental/JobKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .end local v1    # "size":I
    .end local v2    # "$i$a$1$withLock":I
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 113
    .restart local v1    # "size":I
    .restart local v2    # "$i$a$1$withLock":I
    :cond_2
    :try_start_3
    iget-wide v3, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->tail:J

    .line 114
    .local v3, "tail":J
    iget-object v5, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->buffer:[Ljava/lang/Object;

    iget v6, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->capacity:I

    int-to-long v6, v6

    rem-long v6, v3, v6

    long-to-int v6, v6

    aput-object p1, v5, v6

    .line 115
    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->size:I

    .line 116
    const/4 v5, 0x1

    int-to-long v5, v5

    add-long v7, v3, v5

    iput-wide v7, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->tail:J

    .line 117
    .end local v1    # "size":I
    .end local v2    # "$i$a$1$withLock":I
    .end local v3    # "tail":J
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 119
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->checkSubOffers()V

    .line 120
    sget-object v0, Lkotlinx/coroutines/experimental/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;

    return-object v0

    .line 104
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public open()Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 65
    new-instance v0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;

    iget-wide v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->head:J

    invoke-direct {v0, p0, v1, v2}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;-><init>(Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;J)V

    .line 66
    .local v0, "sub":Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;
    iget-object v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->subs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-wide v1, p0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->head:J

    .line 71
    .local v1, "head":J
    iget-wide v3, v0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->subHead:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 73
    iput-wide v1, v0, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel$Subscriber;->subHead:J

    .line 74
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/channels/ArrayBroadcastChannel;->updateHead()V

    .line 76
    :cond_0
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/experimental/channels/SubscriptionReceiveChannel;

    return-object v3
.end method
