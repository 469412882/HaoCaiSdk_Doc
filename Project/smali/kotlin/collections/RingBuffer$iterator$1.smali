.class public final Lkotlin/collections/RingBuffer$iterator$1;
.super Lkotlin/collections/AbstractIterator;
.source "SlidingWindow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/RingBuffer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractIterator<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n+ 2 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,210:1\n202#2:211\n*E\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n*L\n128#1:211\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "kotlin/collections/RingBuffer$iterator$1",
        "Lkotlin/collections/AbstractIterator;",
        "(Lkotlin/collections/RingBuffer;)V",
        "count",
        "",
        "index",
        "computeNext",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private count:I

.field private index:I

.field final synthetic this$0:Lkotlin/collections/RingBuffer;


# direct methods
.method constructor <init>(Lkotlin/collections/RingBuffer;)V
    .locals 1
    .param p1, "$outer"    # Lkotlin/collections/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    .line 119
    invoke-virtual {p1}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    .line 120
    invoke-static {p1}, Lkotlin/collections/RingBuffer;->access$getStartIndex$p(Lkotlin/collections/RingBuffer;)I

    move-result v0

    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    return-void
.end method


# virtual methods
.method protected computeNext()V
    .locals 6

    .line 123
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer$iterator$1;->done()V

    goto :goto_0

    .line 126
    :cond_0
    nop

    .line 127
    iget-object v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    invoke-static {v0}, Lkotlin/collections/RingBuffer;->access$getBuffer$p(Lkotlin/collections/RingBuffer;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/collections/RingBuffer$iterator$1;->setNext(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    .line 128
    .local v0, "this_$iv":Lkotlin/collections/RingBuffer;
    iget v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    .line 128
    .local v1, "$receiver$iv":I
    const/4 v2, 0x1

    .line 128
    .local v2, "n$iv":I
    const/4 v3, 0x0

    .line 211
    .local v3, "$i$f$forward":I
    add-int v4, v1, v2

    invoke-virtual {v0}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v5

    rem-int/2addr v4, v5

    .line 211
    .end local v0    # "this_$iv":Lkotlin/collections/RingBuffer;
    .end local v1    # "$receiver$iv":I
    .end local v2    # "n$iv":I
    .end local v3    # "$i$f$forward":I
    iput v4, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    .line 129
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    .line 130
    :goto_0
    nop

    .line 131
    return-void
.end method